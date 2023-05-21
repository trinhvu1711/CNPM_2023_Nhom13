package controller;
import model.User;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageUser", value = "/ManageUser")
public class ManageUser extends HttpServlet {
    @Override
    // list user
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = UserService.getInstance().getListUser();
        request.setAttribute("listUser", list);
        request.getRequestDispatcher("ManageAccount.jsp").forward(request,response);
    }

    @Override
    // phân quyền , updateUser
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUser= request.getParameter("idUser");
        int decentralization= Integer.parseInt(request.getParameter("decentralization"));
        UserService.getInstance().updateUser( idUser, decentralization);
        response.sendRedirect("/ManageUser");
    }
}
