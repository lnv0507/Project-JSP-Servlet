package com.controller.customer;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;
import com.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "SignUpController", urlPatterns = "/signup")
public class SignUpController extends HttpServlet {
    @Inject
    AccountDAO accountDAO = new AccountDAO();
    private final static String SUCCESS = "login.jsp";
    private final static String ERROR = "register.jsp";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        AccountDTO accountDTO = FormUtil.toModel(AccountDTO.class,request);
        accountDTO.setChucVu("Khách Hàng");
        System.out.println(accountDTO);
        System.out.println(accountDAO.checkRes(accountDTO));
        if(accountDAO.checkRes(accountDTO).equals("1")){
            try {
                accountDAO.signUp(accountDTO);
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            response.sendRedirect(request.getContextPath()+"/Signin?message=signin_success&alert=success");
        }else{
            response.sendRedirect(request.getContextPath()+"/signup?message="+accountDAO.checkRes(accountDTO)+"&alert=danger");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message=request.getParameter("message");
        String alert= request.getParameter("alert");
        if(alert!=null&&message!=null){
            if(message.contains("user")) {
                request.setAttribute("message", "Tên đăng nhập đã tồn tại");
            }
            if(message.contains("email")) {
                request.setAttribute("message", "Email đã tồn tại");
            }
            request.setAttribute("alert",alert);
        }
        RequestDispatcher rd= request.getRequestDispatcher("/register.jsp");
        rd.forward(request,response);
    }
}
