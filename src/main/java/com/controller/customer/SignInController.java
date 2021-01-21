package com.controller.customer;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;
import com.dtos.AccountErrorDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

@WebServlet(name = "SignInController", urlPatterns = "/Signin")
public class SignInController extends HttpServlet {
    private final static String SUCCESS = "header.jsp";
    private final static String LOGINOK = "index-2.jsp";
    private final static String ERROR = "login.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        PrintWriter out = response.getWriter();
        try {
            String userID = request.getParameter("txtIDACCOUNT");
            String password = request.getParameter("txtPASSWORD");
//            AccountDAO dao = new AccountDAO();
            AccountDTO accDTO = new AccountDAO().checkLogin(userID,password);
            boolean check = false;
            if (userID.isEmpty()) {
                check = false;
            }
            if (password.isEmpty()) {
                check = false;
            }
            if(userID.equals(accDTO.getIdAccount())){
                check = true;
            }
            if(password.equals(accDTO.getPassWord())){
                check = true;
            }
            if (check) {
                HttpSession session = request.getSession();
                session.setAttribute("tendangnhap", accDTO.getTenAccount());
                session.setAttribute("chucvu", accDTO.getChucVu());
<<<<<<< Updated upstream
=======
                String chuc = (String) session.getAttribute("chucvu");
                if(chuc.equalsIgnoreCase("ADMIN")){
                    session.setAttribute("admin", "ADMIN");
                }else if(chuc.equalsIgnoreCase("Khách Hàng")){
                    session.setAttribute("khach", "Khách Hàng");
                }else{
                    session.setAttribute("none", "none");
                }
                session.setAttribute("account", accDTO);

>>>>>>> Stashed changes
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
