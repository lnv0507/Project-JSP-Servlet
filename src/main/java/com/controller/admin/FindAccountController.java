package com.controller.admin;

import com.dao.ProductDAO;
import com.dao.SearchDAO;
import com.dtos.AccountDTO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FindAccountController", value = "/admin/FindAccount")
public class FindAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SearchDAO searchDAO = new SearchDAO();
        String txt = request.getParameter("text");
        ArrayList<AccountDTO> list = new ArrayList<>();

        list = searchDAO.searchAccount(txt,1,Integer.MAX_VALUE);
        int index = Integer.parseInt(request.getParameter("index"));
        int size = 16;
        int endPage = 0;
        endPage = list.size()/size;
        if(list.size()%size>0){
            endPage++;
        }
        list = searchDAO.searchAccount(txt,index,16);
        request.setAttribute("listAC",list);
        request.setAttribute("servlet","/admin/FindAccount?");
        request.setAttribute("endPage",endPage);
        request.getRequestDispatcher("KhachHang.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
