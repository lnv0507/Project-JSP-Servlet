package com.controller.admin;

import com.dao.AccountDAO;
import com.dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteProductController", urlPatterns = "/admin/deleteProduct")
public class DeleteProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO pro = new ProductDAO();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        try {
            String id = request.getParameter("id");
            int a = pro.getList().size();
            pro.deleteProduct(id);
            if (pro.getList().size()< a){
                pr.println(1);
            }else {
                pr.println(0);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
