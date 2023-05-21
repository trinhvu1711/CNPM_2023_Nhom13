package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "FormEditUser", value = "/formEditUser")
public class FormEditUser extends HttpServlet {
    @Override
    // hiện form gồm thông tin tài khoản và btn radio phân quyền, tình trạng tài khoản
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUser = request.getParameter("idUser");
        String nameUser = request.getParameter("nameUser");
        String passw = request.getParameter("passw");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String checkDecentralization= request.getParameter("checkDecentralization");
        String decentralization= request.getParameter("decentralization");
        String datesignup = request.getParameter("datesignup");
        String address = request.getParameter("address");
        PrintWriter out = response.getWriter();
        out.println("<div class=\"edit_formUser\">\n" +
                "        <div class=\"container\" style=\"background:none;\">\n" +
                "            <div class=\"col-xl-7 ftco-animate cen-div  row ftco-section justify-content-center\">\n" +
                "                <form action=\"/ManageUser\"  method=\"post\" class=\"billing-form\" style=\"margin-top: 5%;\">\n" +
                "                    <h3 class=\"mb-4 billing-heading\">Chi tiết</h3>\n" +
                "                    <div class=\"row align-items-end\" style=\"font-size: 16px;\">\n" +
                "                        <div class=\"d-flex flex-grow-1 row_input \">\n" +
                "                            <div class=\"col-md-6 col_addprod\">\n" +
                "                                <div class=\"form-group\">\n" +
                "                                    <label>Tên Khách Hàng</label>\n" +
                "                                    <input value=\"" + nameUser + "\" disabled type=\"text\" class=\"form-control input_addpr\" placeholder=\"\">\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "                        <div class=\"d-flex flex-grow-1 row_input \">\n" +
                "                            <div class=\"col-md-6 col_addprod\">\n" +
                "                                <div class=\"form-group\">\n" +
                "                                    <label>Email</label>\n" +
                "                                    <input value=\"" + email + "\" disabled type=\"text\" class=\"form-control input_addpr\" placeholder=\"\">\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                            <div class=\"col-md-6 col_addprod\">\n" +
                "                                <div class=\"form-group\">\n" +
                "                                    <label>Số điện thoại</label>\n" +
                "                                    <input  value=\"" + phone + "\" disabled class=\"form-control input_addpr\" placeholder=\"\">\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                            <div class=\"col-md-6 col_addprod\" style=\"display: none\">\n" +
                "                                <div class=\"form-group\">\n" +
                "                                    <label>idUser</label>\n" +
                "                                    <input value=\"" + idUser + "\"  name=\"idUser\" class=\"form-control input_addpr\" placeholder=\"\" >\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                            <div class=\"col-md-6 col_addprod\" style=\"display: none\">\n" +
                "                                <div class=\"form-group\">\n" +
                "                                    <label>Ngày đăng ký</label>\n" +
                "                                    <input value=\"" + datesignup + "\"  name=\"datesignup\" class=\"form-control input_addpr\" placeholder=\"\" >\n" +
                "                                </div>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "                        <div class=\"col-md-12 \">\n" +
                "                            <div class=\"form-group \" style=\"margin-left: 15px\">\n" +
                "                                <label>Địa chỉ</label>\n" +
                "                                <input value=\"" + address + "\" disabled class=\"form-control input_addpr\" placeholder=\"\">\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                                    //    btn radio để update tình trạng tài khoản
                "                        <div class=\"col-md d-flex col_addprod\">\n" +
                "                            <div class=\"form-group  padd_right\" style=\"\">\n" +
                "                                <label class=\"\">Trạng thái:</label>\n" +
                "                            </div>\n" +
                "                            <div class=\"form-group padd_right\" style=\"\">\n" +
                "                                <input type=\"radio\"  name=\"decentralization\" value=\"0\" class=\"form-checked\" placeholder=\"\">\n" +
                "                                <label class=\"\">User</label>\n" +
                "                            </div>\n" +
                "                            <div class=\"form-group padd_right \" style=\"\">\n" +
                "                                <input type=\"radio\"   name=\"decentralization\" class=\"form-checked\" value=\"1\" placeholder=\"\">\n" +
                "                                <label class=\"\">Admin</label>\n" +
                "                            </div>\n" +
                "                            <div class=\"form-group padd_right \" style=\"\">\n" +
                "                                <input type=\"radio\" name=\"decentralization\" class=\"form-checked\" value=\"-1\"  placeholder=\"\">\n" +
                "                                <label class=\"\">Khoá</label>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "                        <div class=\"d-flex btn_huy_update\" style=\"justify-content: end;\">\n" +
                "                            <input onclick=\"huy()\" type=\"button\" value=\"Hủy\">\n" +
                // 3. nhận Lưu để lưu lại trạng thái tài khoản
                // 4. database cập nhật
                // 5. Form đóng lại
                // 6. Cập nhật lại trạng thái tài khoản trên trang ManageAccount
                "                            <input type=\"submit\" value=\" Lưu\">\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "\n" +
                "                </form>\n" +
                "\n" +
                "            </div>\n" +
                "        </div>\n" +
                "\n" +
                "    </div>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}