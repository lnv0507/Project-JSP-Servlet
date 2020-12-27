package com.controller;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProductController", urlPatterns = "/addproduct")
public class ProductController extends HttpServlet {
    final static String ERROR = "SanPhamCreate.jsp";
    final static String SUCCESS = "SanPhamInfo.jsp";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FileInputStream fis = null;
        String url = ERROR;
        try {
            String idProduct = request.getParameter("txtIDName");
            String nameProduct = request.getParameter("txtName");
            String loai = request.getParameter("txtLoai");
            String chatLieu = request.getParameter("txtChatLieu");
            String giaTien = request.getParameter("txtGia");
            String soLuong = request.getParameter("txtNumber");
            String danhGia = request.getParameter("txtDanhGia");
            String tinhTrang = request.getParameter("txtTinhTrang");
            String image = request.getParameter("txtImage");
            ProductDAO proDAO = new ProductDAO();
            boolean check = true;

            if(check){
                ProductDTO proDTO = new ProductDTO(idProduct, nameProduct, loai, chatLieu, Integer.parseInt(giaTien), Integer.parseInt(soLuong), danhGia, tinhTrang, image);
                proDAO.upload(proDTO);
                url = SUCCESS;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            request.getRequestDispatcher(url).forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
