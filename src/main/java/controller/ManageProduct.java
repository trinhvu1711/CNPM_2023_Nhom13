package controller;

import model.DetailProduct;
import model.Product;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageProduct", value = "/ManageProduct")
public class ManageProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<DetailProduct> listProduct= ProductService.getInstance().getListProduct();
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("ManageProduct.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
