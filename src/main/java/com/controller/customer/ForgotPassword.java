package com.controller.customer;

import com.dao.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ResetPassWord", urlPatterns = "/ResetPassWord")
public class ForgotPassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email1 = request.getParameter("email");
        if (new AccountDAO().sendPassword(email1)) {
            response.sendRedirect("forgot.jsp");
        } else {
            System.out.println("fail");
        }
    }


}
