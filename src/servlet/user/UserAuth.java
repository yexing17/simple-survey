package servlet.user;

import db.service.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserAuth extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserDao dao = new UserDao();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String password_db = dao.getPassword(email);

        if (!password_db.equals("")) {  // query 密码失败的时候得到的是空字符串,我在 getPassword 中是这样定义的
            if (password_db.equals(password)) {
                String user_id = dao.getUser_id(email);
                request.getSession().setAttribute("user_id", user_id);
                request.getSession().setAttribute("user", email);
                request.getSession().setAttribute("login-info", null);
                response.sendRedirect("/user");
            }
            else {
                request.getSession().setAttribute("login-info", "登录失败!密码错误!");
                response.sendRedirect("auth.jsp");
            }
        }
        else {
            request.getSession().setAttribute("login-info", "登录失败!当前用户不存在!");
            response.sendRedirect("auth.jsp");
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
