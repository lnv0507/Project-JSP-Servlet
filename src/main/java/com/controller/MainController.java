package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MainController")
public class MainController extends HttpServlet {
    private final static String SIGNIN = "SigninController";
    private final static String LOGOUT = "LogOutController";
    private final static String SIGNUP = "SignUpController";
    private final static String ERROR = "forgot.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ERROR;
        try {

        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }
    }
}
