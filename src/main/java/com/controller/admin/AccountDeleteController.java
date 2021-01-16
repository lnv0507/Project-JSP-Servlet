package com.controller.admin;

import com.dao.AccountDAO;
import com.dao.ProductDAO;
import com.sun.mail.iap.Response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/admin/deleteAccount")
public class AccountDeleteController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountDAO ac = new AccountDAO();
        resp.setContentType("text/html;charset=UTF-8");
        HttpServletResponse response;
        PrintWriter pr = resp.getWriter();
        try {
            String id = req.getParameter("id");
            int a = ac.getAccount().size();
            ac.deleteAccount(id);
           if (ac.getAccount().size()< a){
               pr.println(1);
           }else {
               pr.println(0);
           }
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
