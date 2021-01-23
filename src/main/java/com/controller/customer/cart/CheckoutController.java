package com.controller.customer.cart;

import com.dao.VanChuyenDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;
@WebServlet(urlPatterns = "/order")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Random rd = new Random();
        int count = 1;
        List<String> listHoaDon = VanChuyenDAO.getHoaDon();
        String name = request.getParameter("txtName");
        String email = request.getParameter("txtEmail");
        String soDienTHoai = request.getParameter("txtSoDienThoai");
        String address = request.getParameter("txtFullAdr");
        String donvivanchuyen = request.getParameter("shippingoptions");
        String maHoaDon = "MS" + count;
        String tongtien = request.getParameter("tongtien");
        VanChuyenDAO vanChuyenDAO = new VanChuyenDAO();
        while(listHoaDon.contains(maHoaDon)) {
            maHoaDon = "MS" + count++;
        }
//        vanChuyenDAO.insertVanChuyen(maHoaDon, name, email, soDienTHoai, address, donvivanchuyen, Double.parseDouble(tongtien));
        request.getRequestDispatcher("checkout.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
