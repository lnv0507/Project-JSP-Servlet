
        package com.controller.customer;

        import com.dao.ProductDAO;
        import com.dao.SearchDAO;
        import com.dtos.ProductDTO;

        import javax.servlet.*;
        import javax.servlet.http.*;
        import javax.servlet.annotation.*;
        import java.io.IOException;
        import java.util.ArrayList;

@WebServlet(name = "PriceController", urlPatterns = "/Price")
public class PriceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int priceLow = Integer.parseInt(request.getParameter("priceLow"));
        int priceHigh = Integer.parseInt(request.getParameter("priceHigh"));

        ProductDAO productDAO = new ProductDAO();
        ArrayList<ProductDTO> list = new ArrayList<>();
        SearchDAO searchDAO = new SearchDAO();
        list = productDAO.getProductByPrice(priceLow,priceHigh,1,Integer.MAX_VALUE);
        int index = Integer.parseInt(request.getParameter("index"));
        int endPage = 0;
        int size = 16;
        endPage = list.size()/size;
        if(list.size()%size>0){
            endPage++;
        }
        ArrayList<String> directories = searchDAO.getAllDirectory();
        request.setAttribute("directories", directories);
        list = productDAO.getProductByPrice(priceLow,priceHigh,index,size);
        request.setAttribute("data",list);
        request.setAttribute("servlet","Price?");
        request.setAttribute("endPage",endPage);
        request.getRequestDispatcher("products.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}