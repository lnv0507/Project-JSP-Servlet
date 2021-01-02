package com.controller;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;
import com.utils.DBUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

@WebServlet(name = "Products", urlPatterns = "/Products")
public class Products extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO pdDAO = new ProductDAO();
        ArrayList<ProductDTO> lsProducts = pdDAO.getList();
        int start = 0, end;
        if(lsProducts.size() < 10){
            end = 9;
        }else{
            end = lsProducts.size();
        }
        if(request.getParameter("start")!=null){
            start = Integer.parseInt(request.getParameter("start"));
        }
        if(request.getParameter("end")!=null){
            end = Integer.parseInt(request.getParameter("end"));
        }
        ArrayList<ProductDTO> lsByPage = pdDAO.getListByPage(lsProducts,start,end);

        Collection<ProductDTO> values = lsByPage;
            request.setAttribute("data", values);
            request.getRequestDispatcher("products.jsp").forward(request, response);
    }

}
