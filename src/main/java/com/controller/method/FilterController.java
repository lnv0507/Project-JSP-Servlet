//package com.controller.method;
//
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebFilter(filterName = "FilterController", urlPatterns = "/*")
//public class FilterController implements Filter {
//    FilterConfig filterConfig = null;
//    private static final boolean debug = false;
//    public static final String homeAdmin = "/admin/Trangchu.jsp";
//    public static final String home = "home";
//    private ServletContext context;
//    public void init(FilterConfig config) throws ServletException {
//        this.context = config.getServletContext();
//    }
//
//    public void destroy() {
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//
//        HttpServletRequest httpReq = (HttpServletRequest) request;
//        HttpServletResponse httpResp = (HttpServletResponse) response;
//        String url = httpReq.getServletPath();
//        if (url.endsWith(".jsp") && !url.contains("forgot.jsp")) {
//            if (url.startsWith("/admin")) {
//                url = homeAdmin;
//            } else
//                url = home;
//        }
//        httpReq.getRequestDispatcher(url).forward(request, response);
//        chain.doFilter(request, response);
//    }
//}
