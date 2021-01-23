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


@WebServlet(name = "Contact", urlPatterns = "/Contact")
    public class ContactController extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
doPost(req, resp);

        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            Random rd=new Random();
            int count=1;
            List<String> listLienhe= ContactDAO.getLienHe();
            String tenAccount=req.getParameter("txtName");
            String email=req.getParameter("txtemail");
            String soDT=req.getParameter("txtSDT");
            String muccanLienHe=req.getParameter("txtDichVu");
            String noiDung=req.getParameter("txtnoidung");
            String maLienhe="LH"+count;
            ContactDAO contactDAO=new ContactDAO();
            while ((listLienhe.contains(maLienhe))){
                maLienhe="LH"+count++;
            }


ContactDAO.insertContactintoDatabase(maLienhe,tenAccount,email,soDT,muccanLienHe,noiDung);


        }
}
