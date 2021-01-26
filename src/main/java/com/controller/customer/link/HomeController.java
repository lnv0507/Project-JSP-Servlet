package com.controller.customer.link;

import com.dao.DesignDAO;
import com.dtos.DesignDTO;
import com.dtos.DirectoryTypeDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = LinkController.HOME;
        ArrayList<DesignDTO> listDes = new ArrayList<>();
        ArrayList<DirectoryTypeDTO> listDesDirec = new ArrayList<>();
        DesignDAO designDAO = new DesignDAO();
        listDesDirec = designDAO.getDirectories();
        listDes = designDAO.getDesigns(1,Integer.MAX_VALUE);
        HttpSession session = req.getSession();
        session.setAttribute("des",listDes);
        session.setAttribute("direc",listDesDirec);
        try {

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            req.getRequestDispatcher(url).forward(req,resp);
        }
    }
}
