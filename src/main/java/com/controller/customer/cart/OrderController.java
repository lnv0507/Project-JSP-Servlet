package com.controller.customer.cart;

import com.dao.CardDAO;
import com.dao.ProductDAO;
import com.dao.VanChuyenDAO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet(name = "OrderController", urlPatterns = "/thanhtoan")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Du Lieu
        int count = 1;
        int countDonHang = 1;
        List<String> listHoaDon = VanChuyenDAO.getHoaDon();
        List<String> listDonHang = VanChuyenDAO.getDonHang();
        //Do du lieu
        String id = request.getParameter("id");
        String name = request.getParameter("txtName");
        String email = request.getParameter("txtEmail");
        String soDienTHoai = request.getParameter("txtSoDienThoai");
        String address = request.getParameter("txtFullAdr");
        String donvivanchuyen = request.getParameter("shippingoptions");
        String maHoaDon = "MS00" + count;
        String maDonHang = "MSDH00" + countDonHang;
        String maDonViVanChuyen = request.getParameter("iddonvivanchuyen");
        String amount = request.getParameter("soluong");
        int soluong = Integer.parseInt(amount);
        int tongtien = Integer.parseInt(request.getParameter("tongtien").trim());
        VanChuyenDAO vanChuyenDAO = new VanChuyenDAO();
        while (listHoaDon.contains(maHoaDon) && listDonHang.contains(maDonHang)) {
            maHoaDon = "HD00" + count++;
            maDonHang = "DH00" + countDonHang++;
        }
        Timestamp tp = new Timestamp(System.currentTimeMillis());
        vanChuyenDAO.insertVanChuyen(maHoaDon, name, email, soDienTHoai, address, donvivanchuyen, tongtien, tp, "Chưa Xử Lý");
        vanChuyenDAO.insertDonHang(maHoaDon, id, tongtien);
        vanChuyenDAO.insertHoaDon(maHoaDon, maDonViVanChuyen, maDonHang, tongtien, id);
        vanChuyenDAO.insertChiTiet(maDonHang, id, soluong);
// cookie giỏ hàng

        Cookie arr[] = request.getCookies();
        List<ProductDTO> list = new ArrayList<>();
        CardDAO dao = new CardDAO();
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split("#");
                for (String s : txt) {
                    list.add(dao.getBookID(s));
                }
            }
        }
        for (int i = 0; i < list.size(); i++) {
            int count2 = 1;
            for (int j = i + 1; j < list.size(); j++) {
                if (list.get(i).getIdProduct().equals(list.get(j).getIdProduct())) {
                    count2++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count2);
                }
            }
        }
        for (Cookie o : arr) {
            o.setMaxAge(0);
            response.addCookie(o);
        }


        request.getRequestDispatcher("theodoidonhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

