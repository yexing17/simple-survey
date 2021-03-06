package servlet;

import db.entity.Questionnaire;
import db.service.QuestionnaireDao;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

@WebServlet(name = "ServletQuestionnaire")
public class ServletQuestionnaire extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = (String) request.getParameter("action");

        QuestionnaireDao dao = new QuestionnaireDao();

        // 这里还缺少一个当 action 为 null 时的判定,下面都是使用 Objects.equals 这个静态方法来规避风险

        if (Objects.equals(action, "get")) {
            int qn_id = Integer.parseInt((String) request.getSession().getAttribute("qn_id"));
            JSONObject qn = dao.getQuestionnaireByQnId(qn_id);
            request.getSession().setAttribute("qn", qn);
            response.sendRedirect("survey.jsp?id=" + qn_id);
        }
        else if (Objects.equals(action, "add")) {
            int user_id = Integer.parseInt((String) request.getSession().getAttribute("user_id"));
            // 计算题目数量
            int question_count = 0;
            while (request.getParameter("question" + String.valueOf(question_count + 1)) != null) {
                question_count++;
            }

            // get the meta data
            String title = (String) request.getParameter("title");
            String description = (String) request.getParameter("description");

            JSONArray questions = new JSONArray();

            for (int i = 0; i < question_count; i++) {
                JSONObject question = new JSONObject();
                String question_content = (String) request.getParameter("question" + String.valueOf(i + 1));
                String type = "slc";
                JSONArray options = new JSONArray();
                if (request.getParameter("q" + String.valueOf(i + 1) + "m1") != null) {
                    type = "slc";
                    for (int j = 1;; j++) {
                        JSONObject option = new JSONObject();
                        String content = (String) request.getParameter("q" + String.valueOf(i + 1) + "m" + String.valueOf(j));
                        if (content == null) {
                            break;
                        }
                        option.put("mark", j);
                        option.put("content", content);

                        options.add(option);
                    }
                } else {
                    type = "blk";
                }
                question.put("question", question_content);
                question.put("type", type);
                question.put("options", options);

                questions.add(question);
            }

            JSONObject questionnaire = new JSONObject();
            questionnaire.put("user_id", user_id);
            questionnaire.put("title", title);
            questionnaire.put("description", description);
            questionnaire.put("question_count", question_count);
            questionnaire.put("questions", questions);

            dao.addQuestionnaire(questionnaire);

            response.sendRedirect("/user/list.jsp");
        } else if (Objects.equals(action, "list")) {
            int user_id = Integer.parseInt((String) request.getSession().getAttribute("user_id"));
            ArrayList<Questionnaire> qns = (ArrayList<Questionnaire>) dao.getAllQuestionnaireByUserId(user_id);
            request.getSession().setAttribute("qns", qns);
            response.sendRedirect("/user/list.jsp");
        } else if (Objects.equals(action, "release")) {
            // 从 session 获取 user_id,从 http 参数获取 id(实质上是 qn_id)
            int user_id = Integer.parseInt((String) request.getSession().getAttribute("user_id"));
            int qn_id = Integer.parseInt(request.getParameter("id"));

            // 执行更新(返回的影响行数将在后续进行权限限制的时候起到作用)
            int effect_row = dao.setReleaseTime(user_id, qn_id);

            // 跳转回 list.jsp 防止重复提交
            response.sendRedirect("/user/list.jsp");
        } else if (Objects.equals(action, "close")) {
            // 从 session 获取 user_id,从 http 参数获取 id(实质上是 qn_id)
            int user_id = Integer.parseInt((String) request.getSession().getAttribute("user_id"));
            int qn_id = Integer.parseInt(request.getParameter("id"));

            // 执行更新(返回的影响行数将在后续进行权限限制的时候起到作用)
            int effect_row = dao.setCloseTime(user_id, qn_id);

            // 跳转回 list.jsp 防止重复提交
            response.sendRedirect("/user/list.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
