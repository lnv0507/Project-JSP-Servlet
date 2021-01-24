package com.controller.customer;

import com.dao.ProductDAO;
import com.dao.SearchDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ProductDirectoryController", urlPatterns = "/Directory")
public class ProductDirectoryController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        ProductDAO productDAO = new ProductDAO();
        SearchDAO searchDAO = new SearchDAO();
        String indexString = request.getParameter("index");
        ArrayList<ProductDTO> listProducts = productDAO.getProductsByType(type,1,Integer.MAX_VALUE);

        int index = Integer.parseInt(indexString);
        int pageSize = 16;
        int endPage = 0;
        endPage = listProducts.size()/pageSize;
        if(listProducts.size() % pageSize != 0){
            endPage++;
        }

        listProducts = productDAO.getProductsByType(type,index,pageSize);
        ArrayList<String> directories = searchDAO.getAllDirectory();
        request.setAttribute("directories", directories);
        request.setAttribute("endPage",endPage);
        request.setAttribute("data",listProducts);
        request.setAttribute("servlet","SearchProduct?directory="+type+"&");
        request.getRequestDispatcher("products.jsp").forward(request,response);
    }
}
