package com.controller.customer.link;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/about")
public class AboutController extends HttpServlet {
    public static final String ABOUT = "about.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = ABOUT;
        try {


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            req.getRequestDispatcher(url).forward(req, resp);
        }
    }
}
