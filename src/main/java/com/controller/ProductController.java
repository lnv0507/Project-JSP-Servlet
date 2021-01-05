package com.controller;

import com.dao.ProductDAO;
import com.dtos.ProductDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



@WebServlet(name = "ProductController", urlPatterns = "/admin/addproduct")
public class ProductController extends HttpServlet {
    final static String ERROR = "SanPhamCreate.jsp";
    final static String SUCCESS = "SanPhamInfo.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = ERROR;
        InputStream is = null;
        ArrayList<String> images = new ArrayList<>();
        try {
            String idProduct = request.getParameter("txtIDName");
            String nameProduct = request.getParameter("txtName");
            String loai = request.getParameter("txtLoai");
            String chatLieu = request.getParameter("txtChatLieu");
            String giaTien = request.getParameter("txtGia");
            String soLuong = request.getParameter("txtNumber");
            int danhGia = 2;
            String tinhTrang = request.getParameter("txtTinhTrang");

            //---------------------------
//            ServletFileUpload upload = new ServletFileUpload(factory);
//            List items = upload.parseRequest(request);
//            Iterator iterator = items.iterator();
//            while (iterator.hasNext())
//            {
//                FileItem item = (FileItem) iterator.next();
//                if (!item.isFormField())
//                {
//                    String fileName = item.getName();
//                    String root = getServletContext().getRealPath("/");
//                    File path = new File(root + "/uploads");
//                    if (!path.exists())
//                    {
//                        boolean status = path.mkdirs();
//                    }
//                    File uploadedFile = new File(path + "/" + fileName);
//                    System.out.println(uploadedFile.getAbsolutePath());
//                    if(fileName!="")
//                        item.write(uploadedFile);
//                    else
//                        out.println("file not found");
//                    out.println("<h1>File Uploaded Successfully....:-)</h1>");
//                }
//                else
//                {
//                    String abc = item.getString();
//                    out.println("<br><br><h1>"+abc+"</h1><br><br>");
//                }
//            }

            //----------------------------

//            images.add(image);
//            Part part = request.getPart("txtImage");
//            String image = extractFileName(part);
//            is = part.getInputStream();
            ProductDAO proDAO = new ProductDAO();
            boolean check = true;

            if (check) {
                ProductDTO proDTO = new ProductDTO(idProduct, nameProduct, loai, chatLieu, Integer.parseInt(giaTien), Integer.parseInt(soLuong), danhGia, tinhTrang);
//                proDTO.addImage(image);
                proDAO.upload(proDTO);
                url = SUCCESS;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            request.getRequestDispatcher("test.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    public File getFolderUpload() {
        File folderUpload = new File(System.getProperty("user.home") + "/Uploads");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
}
