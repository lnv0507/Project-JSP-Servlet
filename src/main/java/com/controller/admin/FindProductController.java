package com.controller.admin;

import com.dao.ProductDAO;
import com.dao.SearchDAO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FindProductController", urlPatterns = "/admin/FindProduct")
public class FindProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        SearchDAO searchDAO = new SearchDAO();
        String txt = request.getParameter("text");
        ArrayList<ProductDTO> list = new ArrayList<>();

        list = searchDAO.searchProduct(txt,1,Integer.MAX_VALUE);
        int index = Integer.parseInt(request.getParameter("index"));
        int size = 16;
        int endPage = 0;
        endPage = list.size()/size;
        if(list.size()%size>0){
            endPage++;
        }
        list = searchDAO.searchProduct(txt,index,16);
        request.setAttribute("data",list);
        request.setAttribute("servlet","/admin/FindProduct?");
        request.setAttribute("endPage",endPage);
        request.getRequestDispatcher("SanPham.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
