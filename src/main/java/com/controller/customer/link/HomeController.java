package com.controller.customer.link;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = LinkController.HOME;
        try {

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            req.getRequestDispatcher(url).forward(req,resp);
        }
    }
}
