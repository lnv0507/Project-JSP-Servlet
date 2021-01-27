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


@WebServlet(name = "ProductController", urlPatterns = {"/admin/addproduct", "/admin/product"})
public class ProductController extends HttpServlet {
    final static String ERROR = "SanPhamCreate.jsp";
    final static String SUCCESS = "DetailProduct?id=";
    private static final String UPLOAD_DIR = "images/products";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ERROR;
        ArrayList<String> images = new ArrayList<>();
        ProductDAO proDAO = new ProductDAO();
        try {
            int count = 1;
            List<String> listIdProduct = proDAO.getMaSanPham();
            String idProduct = request.getParameter("txtIDName");
            String nameProduct = request.getParameter("txtName");
            String loai = request.getParameter("txtLoai");
            String chatLieu = request.getParameter("txtChatLieu");
            String giaTien = request.getParameter("txtGia");
            String soLuong = request.getParameter("txtNumber");
            String tinhTrang = request.getParameter("txtTinhTrang");
            String imagee1 = request.getParameter("photos1");
            String imagee2 = request.getParameter("photos2");
            ArrayList<String> list = new ArrayList<String>();
            list.add(imagee1);
//            list.add(imagee2);

            boolean check = true;
            if (idProduct.isEmpty() || idProduct.equals("")) {
                idProduct = "MSPRO00" + count;
                while (listIdProduct.contains(idProduct)) {
                    idProduct = "MSPRO00" + count++;
                }
            }
            if (check) {
                ProductDTO proDTO = new ProductDTO();
                proDTO.setIdProduct(idProduct);
                proDTO.setTenProduct(nameProduct);
                proDTO.setLoai(loai);
                proDTO.setChatLieu(chatLieu);
                proDTO.setSoLuongTrongKho(Integer.parseInt(soLuong));
                proDTO.setGiaTien(Integer.parseInt(giaTien));
                proDTO.setTinhTrang(tinhTrang);
                for (String listImage : list) {
                    proDTO.addImage(listImage);
                    proDAO.uploadImage(idProduct, listImage);
                }
                HttpSession session = request.getSession();
                session.setAttribute("product", proDAO);
                proDAO.upload(proDTO);
                url = SUCCESS + idProduct.trim();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request, response);
        ProductDAO pd = new ProductDAO();
        ArrayList<ProductDTO> listPro = pd.getListByPage(1, Integer.MAX_VALUE);
        int index = Integer.parseInt(request.getParameter("index"));
        int size = 16;
        int endPage = 0;
        endPage = listPro.size() / size;
        if (listPro.size() % size > 0) {
            endPage++;
        }
        listPro = pd.getListByPage(index, size);

        request.setAttribute("endPage", endPage);
        request.setAttribute("data", listPro);
        request.setAttribute("servlet", "product?");
        request.getRequestDispatcher("/admin/SanPham.jsp").forward(request, response);

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
