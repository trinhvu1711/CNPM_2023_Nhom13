package controller;

import model.User;
import service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        //  Lấy username, pass được LoginForm truyền sang
            String username = request.getParameter("username1");
            String pass = request.getParameter("password");
            String messageResponse="";
//  Tạo đối tượng User có tên là user:User
            User user = null;
//  UserDataService trả về kết quả và gán cho user
            user =new UserService().getUser(username, pass);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
// kết quả role được phương thức trả về được gán cho biến role:String
                String role = user.checkDecentralization();
//  Nếu User được trả về hợp lệ và người dùng có Role là "User" thì chuyển hướng đến index.
                if (role.equals("User")) {
                    response.sendRedirect("Home");
// Nếu User được trả về hợp lệ và người dùng có Role là "Admin" thì chuyển hướng đến admin.
                } else if (role.equals("Admin")) {
                    response.sendRedirect("admin.jsp");
                }
// Nếu User được trả về hợp lệ và người dùng có Role là "Đã bị khoá" thì chuyển hướng đến index và thông báo lỗi.
                 else if (role.equals("Đã bị khoá")) {
                            System.out.println("Đã bị khoá");
                     request.setAttribute("messageResponse","Tài khoản đã bị khóa");
                    request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
                }
            } else if (user == null) {
//  LoginForm hiển thị thông báo lỗi "Tên đăng nhập hoặc mật khẩu không đúng"
                System.out.println("Tên đăng nhập hoặc mật khẩu không đúng!");
                request.setAttribute("messageResponse","Tên đăng nhập hoặc mật khẩu không đúng!");
//  LoginController đưa người dùng về lại LoginForm để đăng nhập lại
                request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
            }
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
