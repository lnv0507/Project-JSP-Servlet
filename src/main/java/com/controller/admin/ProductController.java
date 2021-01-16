package com.controller.admin;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;



@WebServlet(name = "ProductController", urlPatterns = {"/admin/addproduct","/admin/product"})
public class ProductController extends HttpServlet {
    final static String ERROR = "SanPhamCreate.jsp";
    final static String SUCCESS = "SanPhamInfo.jsp";
    private static final String UPLOAD_DIR = "images/products";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ERROR;
        InputStream is = null;
//        HashMap<String, List<String>> hash = new HashMap<>();
        ArrayList<String> images = new ArrayList<>();
        try {
            String idProduct = request.getParameter("txtIDName");
            String nameProduct = request.getParameter("txtName");
            String loai = request.getParameter("txtLoai");
            String chatLieu = request.getParameter("txtChatLieu");
            String giaTien = request.getParameter("txtGia");
            String soLuong = request.getParameter("txtNumber");
            int danhGia = 2;
            String tinhTrang = request.getParameter("txtTinhTrang");
            String imagee1 = request.getParameter("photos1");
            String imagee2 = request.getParameter("photos2");
            ArrayList<String> list = new ArrayList<String>();
            list.add(imagee1);
            list.add(imagee2);
//            hash.put(idProduct, list);
            ProductDAO proDAO = new ProductDAO();
            boolean check = true;
            if (check) {
                ProductDTO proDTO = null;
                ProductDTO proDTOimg = null;
                for(String listImage : list) {
                    proDTO = new ProductDTO(idProduct, nameProduct, loai, chatLieu, Integer.parseInt(giaTien), Integer.parseInt(soLuong), danhGia, tinhTrang, listImage);
                }
                proDAO.upload(proDTO);
//                HttpServletRequest request;
                HttpSession session = request.getSession();
                request.setAttribute("list", proDTO);
                url = SUCCESS;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request, response);
//        HttpServletRequest request;
        HttpSession session = request.getSession();
        session.getAttribute("list");
        ProductDAO pd = new ProductDAO();
        ArrayList<ProductDTO> listPro = pd.getListByPage(1,10);
        session.setAttribute("data", listPro);
        request.getRequestDispatcher("/admin/SanPham.jsp").forward(request,response);

    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    public File getFolderUpload() {
        File folderUpload = new File(System.getProperty("user.home") + "/Uploads");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
}