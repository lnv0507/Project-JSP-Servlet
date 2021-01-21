package com.controller.customer.link;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


    @WebServlet(name = "Category", urlPatterns = "/Category")
    public class Category extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ProductDAO productDAO = new ProductDAO();
            ArrayList<ProductDTO> allProducts = productDAO.getList();
            String indexString = request.getParameter("index");
            int index = Integer.parseInt(indexString);
            int pageSize = 16;
            int endPage = 0;
            String category_name=request.getParameter("category_name");
            endPage = allProducts.size() / pageSize;
            if(allProducts.size() % pageSize != 0){
                endPage++;
            }
//        handleParameter(request);
            ArrayList<ProductDTO> listProductsByPage = productDAO.getListByPage(index, pageSize);
            ArrayList<ProductDTO> listCategory = productDAO.getListCategory();
            ArrayList<ProductDTO> listProductByCategory = productDAO.getProductByCategoryName(category_name);
            request.setAttribute("endPage",endPage);
            request.setAttribute("data",listProductsByPage);
            request.setAttribute("servlet","Products?");
            request.setAttribute("listC",listCategory);
            request.setAttribute("data",listProductByCategory);

            request.getRequestDispatcher("products.jsp").forward(request,response);

        }

//    private void handleParameter(HttpServletRequest request) {
//        int pages=1;
//        String category_name="";
//        String url ="";
//        String sqlCondition="";
//        if(request.getParameter("pages")!=null){
//            pages=Integer.parseInt(request.getParameter("pages"));
//
//        }
//        if(request.getParameter("category")!=null){
//            category_name=request.getParameter("category_name");
//
//            sqlCondition+="and category="+category_name;
//            url +="&category="+category_name;
//        }
//        request.setAttribute("pages",pages);
//        request.setAttribute("category_name",category_name);
//        request.setAttribute("url",url);
//        request.setAttribute("direct_to","products.jsp");
//        request.setAttribute("sql","select * from product"+ sqlCondition);
//
//    }





}
