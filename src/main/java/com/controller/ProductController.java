package com.controller;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ProductController", urlPatterns = "/admin/addproduct")
public class ProductController extends HttpServlet {
    final static String ERROR = "SanPhamCreate.jsp";
    final static String SUCCESS = "SanPhamInfo.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ERROR;
        InputStream is = null;
        ArrayList<String> images = new ArrayList<>();
        try {
            String idProduct = request.getParameter("txtIDName");
            String nameProduct = request.getParameter("txtName");
            String loai = request.getParameter("txtLoai");
            String chatLieu = request.getParameter("txtChatLieu");
            String giaTien = request.getParameter("txtGia");
            String soLuong = request.getParameter("txtNumber");
            int danhGia = Integer.parseInt(request.getParameter("txtDanhGia"));
            String tinhTrang = request.getParameter("txtTinhTrang");
            String image = request.getParameter("txtImage");
            images.add(image);
//            Part part = request.getPart("txtImage");
//            String image = extractFileName(part);
//            is = part.getInputStream();
            ProductDAO proDAO = new ProductDAO();
            boolean check = true;

            if (check) {
                ProductDTO proDTO = new ProductDTO(idProduct, nameProduct, loai, chatLieu, Integer.parseInt(giaTien), Integer.parseInt(soLuong), danhGia, tinhTrang);
                proDTO.addImage(image);
                proDAO.upload(proDTO);
                url = SUCCESS;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
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
