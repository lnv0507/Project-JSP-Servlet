//package com.controller.method;
//
//import com.dtos.AccountDTO;
//
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@WebFilter(urlPatterns = "/*", filterName = "FilterPhanQuyenController")
//public class FilterPhanQuyenController implements Filter {
//    public static final String home = "/webshop/home";    private ServletContext context;
//    public void init(FilterConfig config) throws ServletException {
//        this.context = config.getServletContext();
//    }
//
//    public void destroy() {
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        HttpServletRequest requestSv = (HttpServletRequest) request;
//        HttpServletResponse respontSv = (HttpServletResponse) response;
//        HttpSession session = requestSv.getSession();
//        String url = requestSv.getServletPath();
//        System.out.println(url);
//        if ( url.startsWith("/admin")) {
//            AccountDTO accountDTO = (AccountDTO) session.getAttribute("account");
//            if(accountDTO!= null){
//                if(accountDTO.getChucVu().equalsIgnoreCase("ADMIN")){
//                    chain.doFilter(requestSv, respontSv);
//                }else if(accountDTO.getChucVu().equalsIgnoreCase("Khách Hàng")){
//                    respontSv.sendRedirect(home);
//                }
//            }else{
//                respontSv.sendRedirect(home);
//            }
//        }else{
//            chain.doFilter(request, response);
//        }
//    }
//}


//package com.controller.method;
//
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebFilter(urlPatterns = "/*", filterName = "FilterController")
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
