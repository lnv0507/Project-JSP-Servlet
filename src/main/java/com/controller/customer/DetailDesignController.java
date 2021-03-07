package com.controller.customer;

import com.dao.DesignDAO;
import com.dao.ProductDAO;
import com.dtos.DesignDTO;
import com.dtos.DetailDesignDTO;
import com.dtos.ProductDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "DetailDesignController", urlPatterns = "/DetailDesignController")
public class DetailDesignController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        ArrayList<DesignDTO> lsDesign = new ArrayList<>();
        ArrayList<String> lsType = new ArrayList<>();
        DesignDAO designDAO = new DesignDAO();
        DesignDTO designDTO = new DesignDTO();
        ArrayList<String> images = new ArrayList<>();
        try {
            designDTO = designDAO.getDesById(id);
            String typeId = designDTO.getType();
            String type = designDAO.getTypeById(typeId);
            lsType.add(type);
            lsDesign.add(designDTO);
            images = designDTO.getImagesDes();
            ArrayList<DetailDesignDTO> list = designDAO.findById(designDTO.getIdDes());


            HttpSession session = request.getSession();
            session.setAttribute("images",images);
            session.setAttribute("products",list);
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
