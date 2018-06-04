package servlet;

import db.entity.User;
import db.service.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

public class ServletUser extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");

        if (Objects.equals(action, "auth")) {
            UserDao dao = new UserDao();
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            String password_db = dao.getPassword(email);

            if (!password_db.equals("")) {  // query 密码失败的时候得到的是空字符串,我在 getPassword 中是这样定义的
                if (password_db.equals(password)) {
                    String user_id = dao.getUser_id(email);
                    request.getSession().setAttribute("user_id", user_id);
                    request.getSession().setAttribute("email", email);
                    request.getSession().setAttribute("login-info", null);
                    response.sendRedirect("/user/index.jsp");
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
        else if (Objects.equals(action, "create")) {
            UserDao dao = new UserDao();
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User user = new User(email, password);
            int count = dao.addUser(user);

            if (count == 1) {
                String user_id = dao.getUser_id(email);
                request.getSession().setAttribute("user_id", user_id);
                request.getSession().setAttribute("email", email);
                request.getSession().setAttribute("reg-info", null);
                response.sendRedirect("/user/index.jsp");
            }
            else {
                request.getSession().setAttribute("reg-info", "注册失败!注册邮箱已经被使用!");
                response.sendRedirect("auth.jsp");
            }
        }
        else if (Objects.equals(action, "logout")) {
            request.getSession().removeAttribute("user_id");
            request.getSession().removeAttribute("email");
            response.sendRedirect("/auth.jsp");
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
