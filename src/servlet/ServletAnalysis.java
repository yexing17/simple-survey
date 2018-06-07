package servlet;

import db.service.AnalysisDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "Analysis")
public class ServletAnalysis extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取动作
        String action = request.getParameter("action");

        // 获取当前 session 中的 user_id
        int user_id = (int) request.getSession().getAttribute("user_id");

        // 初始化 dao 类
        AnalysisDao dao =  new AnalysisDao();

        // 如果动作请求是 overview
        if (Objects.equals(action, "overview")) {


            response.sendRedirect("user/index.jsp");
        }
        // 如果动作请求是 details
        else if (Objects.equals(action, "details")) {
            
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
