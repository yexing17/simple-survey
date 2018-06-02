package servlet.receipt;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import servlet.CommonHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletReceipt")
public class ServletReceipt extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject receipt = new JSONObject();

        int qn_id = Integer.parseInt((String)request.getSession().getAttribute("qn_id"));
        String submit_ip = CommonHelper.getIp(request);

        System.out.println(submit_ip);

        JSONArray answers = new JSONArray();
        // 这里获取到使用 c:set 标签生成的数字默认是 long 类型的
        int count = (int)(long)request.getSession().getAttribute("count");
        System.out.println(count);
        // 因为 count 是写在循环语句的最尾部自增的,所有 count 的数值会比所有真是用于题目标号的数值 +1
        for (int i = 1; i < count; i++) {
            JSONObject answer = new JSONObject();

            int question_id = Integer.parseInt(request.getParameter("c" + i + "qid"));
            String answer_content = request.getParameter("c" + i + "a");

            answer.put("question_id", question_id);
            answer.put("answer_content", answer_content);

            answers.add(answer);
        }

        receipt.put("qn_id", qn_id);
        receipt.put("submit_ip", submit_ip);
        receipt.put("answers", answers);

        System.out.println(receipt);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
