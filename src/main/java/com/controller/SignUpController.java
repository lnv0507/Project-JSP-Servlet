package com.controller;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SignUpController", urlPatterns = "/signup")
public class SignUpController extends HttpServlet {
    private final static String SUCCESS = "login.jsp";
    private final static String ERROR = "register.jsp";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("txtID");
            String tenAccount = request.getParameter("");
            String soDienThoai = request.getParameter("");
            String diaChi = request.getParameter("");
            String email = request.getParameter("email");
            String chucVu = request.getParameter("");
            String pass = request.getParameter("password");
            String repass = request.getParameter("repass");
            AccountDAO accDAO = new AccountDAO();
            boolean check = true;
            if(username.isEmpty()){
                check = false;
            }
            if(pass.isEmpty()){
                check = false;
            }
            if(!repass.equals(pass)){
                check = false;
            }
            if(email.isEmpty()){
                check = false;
            }
            if(check){
                AccountDTO accDTO = new AccountDTO(username,tenAccount,soDienThoai,diaChi, email,chucVu, pass);
                accDAO.signUp(accDTO);
                url = SUCCESS;
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
