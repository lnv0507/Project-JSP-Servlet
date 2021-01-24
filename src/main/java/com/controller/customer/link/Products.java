package com.controller.customer.link;

import com.dao.ProductDAO;
import com.dao.SearchDAO;
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
           ProductDAO productDAO = new ProductDAO();
        SearchDAO searchDAO = new SearchDAO();

            ArrayList<ProductDTO> allProducts = productDAO.getList(); //Lay toan bo san pham
            String indexString = request.getParameter("index");
            int index = Integer.parseInt(indexString.trim());
            int pageSize = 16;
            int endPage = 0;
            endPage = allProducts.size() / pageSize;
            if(allProducts.size() % pageSize != 0){
                endPage++;
            }
            ArrayList<ProductDTO> listProductsByPage = productDAO.getListByPage(index, pageSize); //Lay san pham theo trang
        ArrayList<String> directories = searchDAO.getAllDirectory();
            request.setAttribute("directories", directories);
            request.setAttribute("endPage",endPage);
            request.setAttribute("data",listProductsByPage);
            request.setAttribute("servlet","Products?");
            request.getRequestDispatcher("products.jsp").forward(request,response);

    }
}
