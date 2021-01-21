package com.controller.admin;

import com.dao.AccountDAO;
import com.dtos.AccountDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/admin/admincreate")
public class AdminCreateController extends HttpServlet {
    private final static String SUCCESS = "ThietLap.jsp";
    private final static String ERROR = "ThietLap.jsp";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = ERROR;
        resp.setContentType("text/html;charset=UTF-8");
        try {
            String idAccount = req.getParameter("customer_code");
            String nameAccount = req.getParameter("customer_name");
            String soDienThoai = req.getParameter("customer_phone");
            String email = req.getParameter("customer_email");
            String diachi = req.getParameter("customer_addr");
            String pass = req.getParameter("customer_password");
            AccountDAO accountDAO = new AccountDAO();
            boolean check = true;
            if (idAccount.isEmpty()) {
                check = false;
            }
            if (nameAccount.isEmpty()) {
                check = false;
            }
            if (soDienThoai.isEmpty()) {
                check = false;
            }
            if (pass.isEmpty()) {
                check = false;
            }
            if (diachi.isEmpty()) {
                check = false;
            }
            if (email.isEmpty()) {
                check = false;
            }
            if (check) {
                AccountDTO accDTO = new AccountDTO(idAccount, nameAccount, soDienThoai, diachi, email, "ADMIN", pass);
                accountDAO.signUp(accDTO);
                url = SUCCESS;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            req.getRequestDispatcher(url).forward(req, resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountDAO accountDAO = new AccountDAO();
        ArrayList<AccountDTO> list = accountDAO.listAdmin();
        try {
            HttpSession session = req.getSession();
            session.setAttribute("listADMIN", list);
            req.getRequestDispatcher("ThietLap.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
