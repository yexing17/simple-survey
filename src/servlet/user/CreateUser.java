package servlet.user;

import db.entity.User;
import db.service.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateUser extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserDao dao = new UserDao();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(email, password);
        int count = dao.addUser(user);

        if (count == 1) {
            request.getSession().setAttribute("user", email);
            request.getSession().setAttribute("reg-info", null);
            response.sendRedirect("/user");
        }
        else {
            request.getSession().setAttribute("reg-info", "注册失败!注册邮箱已经被使用!");
            response.sendRedirect("auth.jsp");
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
