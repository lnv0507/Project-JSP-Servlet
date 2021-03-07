package com.controller.customer.cart;

import com.dao.CardDAO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowCartController", urlPatterns = "/print")
public class ShowCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        PrintWriter out = response.getWriter();
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
        int count = 1;
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getIdProduct());
            for (int j = i + 1; j < list.size(); j++) {
                System.out.println(list.get(i).getIdProduct());
                if (list.get(i).getIdProduct().trim().equals(list.get(j).getIdProduct().trim())) {
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                }
            }
        }
        int total = 0;
        int tinhtien = 0;
        int sum = 0;
        for (ProductDTO o : list) {
            total = total + o.getAmount() * o.getGiaTien();
            tinhtien = o.getAmount() * o.getGiaTien();
            sum += tinhtien;
        }
        HttpSession session = request.getSession();
        session.setAttribute("tinhtien", tinhtien);
        session.setAttribute("list", list);
        session.setAttribute("total", total);
        session.setAttribute("vat", 0.1 * total);
        session.setAttribute("sum", sum);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
