package com.controller.customer;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;
import com.utils.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "SignInController", urlPatterns = "/Signin")
public class SignInController extends HttpServlet {
    private final static String SUCCESS = "header.jsp";
    private final static String LOGINOK = "index-2.jsp";
    private final static String ERROR = "login.jsp";
    AccountDAO accountDAO =new AccountDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        String username=request.getParameter("username");
        String password= request.getParameter("password");
        try {
            AccountDTO accountDTO = accountDAO.checkLogin(username,password);
            if(accountDTO!=null){
                SessionUtil.getInstance().putValue(request,"user",accountDTO);
                response.sendRedirect(request.getContextPath()+"/home");
            }else{
                response.sendRedirect(request.getContextPath()+"/Signin?&message=wrong_input&alert=danger");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message=request.getParameter("message");
        String alert= request.getParameter("alert");
        if(alert!=null&&message!=null){
            if(message.contains("login")) {
                request.setAttribute("message", "Bạn phải đăng nhập");
            }else if (message.contains("success")) {
                request.setAttribute("message", "Đăng ký thành công. Hãy đăng nhập");

            }else{
                request.setAttribute("message", "Sai tên đăng nhập hoặc mật khẩu");
            }
            request.setAttribute("alert",alert);
        }
        RequestDispatcher rd =request.getRequestDispatcher("/login.jsp");
        rd.forward(request,response);
    }
}
