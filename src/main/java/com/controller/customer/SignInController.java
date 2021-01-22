package com.controller.customer;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SignInController", urlPatterns = "/Signin")
public class SignInController extends HttpServlet {
    private final static String SUCCESS = "header.jsp";
    private final static String LOGINOK = "index-2.jsp";
    private final static String ERROR = "login.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {
            String userID = request.getParameter("txtIDACCOUNT");
            String password = request.getParameter("txtPASSWORD");
//            AccountDAO dao = new AccountDAO();
            AccountDTO accDTO = new AccountDAO().checkLogin(userID, password);
            boolean check = false;
            if (userID.isEmpty() && password.isEmpty() ) {
                check = false;
                request.setAttribute("message", "Sai Thông Tin Đăng Nhập Rồi");
            }
            if (userID.equals(accDTO.getIdAccount())) {
                check = true;
            } else {
                check = false;
            }
            if (password.equals(accDTO.getPassWord())) {
                check = true;
            } else {
                check = false;
            }
            if (check) {
                session.setAttribute("tendangnhap", accDTO.getTenAccount());
                session.setAttribute("chucvu", accDTO.getChucVu());
                String chuc = (String) session.getAttribute("chucvu");
                if (chuc.equalsIgnoreCase("ADMIN")) {
                    session.setAttribute("admin", "ADMIN");
                } else if (chuc.equalsIgnoreCase("Khách Hàng")) {
                    session.setAttribute("khach", "Khách Hàng");
                } else {
                    session.setAttribute("none", "none");
                }
                session.setAttribute("account", accDTO);
                url = SUCCESS;
                url = LOGINOK;
            }


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
