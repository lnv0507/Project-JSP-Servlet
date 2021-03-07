package com.controller.customer;

import com.dao.ContactDAO;
import com.dtos.ContactDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;


@WebServlet(name = "LienHe", urlPatterns = "/LienHe")
public class LienHeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        Random rd = new Random();
        int count = 1;
        List<String> listLienhe = ContactDAO.getLienHe();
        String tenAccount = req.getParameter("txtName");
        String email = req.getParameter("txtemail");
        String soDT = req.getParameter("txtSDT");
        String noiDung = req.getParameter("txtnoidung");
        String maLienhe = "LH" + count;
        ContactDAO contactDAO = new ContactDAO();
        while ((listLienhe.contains(maLienhe))) {
            maLienhe = "LH" + count++;
        }
        ContactDAO.insertContactintoDatabase(maLienhe, email, soDT, noiDung, tenAccount,"Chưa Xử Lý");
        req.getRequestDispatcher("contact.jsp").forward(req, resp);

    }
}