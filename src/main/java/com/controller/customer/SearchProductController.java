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
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;

@WebServlet(name = "SearchProductController", urlPatterns = "/SearchProduct")
public class SearchProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txt = (String) request.getParameter("search");
        String indexString = request.getParameter("index");
        SearchDAO searchDAO = new SearchDAO();
        ArrayList<ProductDTO> listProduct  = searchDAO.searchProduct(txt,1,Integer.MAX_VALUE);

        int index = Integer.parseInt(indexString);
        int pageSize = 16;
        int endPage = 0;
        endPage = listProduct.size()/pageSize;
        if(listProduct.size() % pageSize != 0){
            endPage++;
        }
        listProduct =  searchDAO.searchProduct(txt,index,pageSize);
        ArrayList<String> directories = searchDAO.getAllDirectory();
        request.setAttribute("directories", directories);
        request.setAttribute("endPage",endPage);
        request.setAttribute("data",listProduct);
        request.setAttribute("servlet","SearchProduct?search="+txt+"&");
        request.getRequestDispatcher("products.jsp").forward(request,response);
    }
}
