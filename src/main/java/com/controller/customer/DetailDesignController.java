package com.controller.customer;

import com.dao.DesignDAO;
import com.dao.ProductDAO;
import com.dtos.DesignDTO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailDesignController", urlPatterns = "/DetailDesignController")
public class DetailDesignController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        ArrayList<DesignDTO> lsDesign = new ArrayList<>();
        ArrayList<String> lsType = new ArrayList<>();
        ArrayList<ProductDTO> listProduct = new ArrayList<>();
        ProductDAO productDAO = new ProductDAO();
        DesignDAO designDAO = new DesignDAO();
        DesignDTO designDTO = new DesignDTO();
        try {

            designDTO = designDAO.getDesById(id);
            String typeId = designDTO.getType();
            String type = designDAO.getTypeById(typeId);
            lsType.add(type);
            lsDesign.add(designDTO);
            for(String str : designDTO.getListProducts()){
                listProduct.add(productDAO.getProductById(str));
            }
            HttpSession session = request.getSession();
            session.setAttribute("product",listProduct);
            session.setAttribute("type",lsType);
            session.setAttribute("design", lsDesign);
            request.getRequestDispatcher("project-details.jsp").forward(request,response);
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
