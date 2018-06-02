package db.service;

import db.entity.Questionnaire;
import db.util.MySQLHelper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class QuestionnaireDao {
    public int addQuestionnaire(JSONObject questionnaire) {
        int count = 0;
        int qn_id;  // 准备使用 select last_insert_id() 获取自增 qn_id 的值
        // 开始连接
        MySQLHelper.getConnection();
        // 该连接上的一个事务开始
        MySQLHelper.setAutoCommitFalse();

        String sql_insert_qn = "insert into questionnaires(user_id, title, description) values(?, ?, ?)";
        // get primary info of qn
        int user_id = (int) questionnaire.get("user_id");
        String title = (String) questionnaire.get("title");
        String description = (String) questionnaire.get("description");
        JSONArray questions = (JSONArray) questionnaire.get("questions");
        count = MySQLHelper.excuteUpdate(sql_insert_qn, user_id, title, description);
        qn_id = MySQLHelper.getLastInsertId();
        for (Object q :
                questions) {
            JSONObject question = (JSONObject) q;

            int question_id;
            String sql_insert_question = "insert into questions(qn_id, question, type) values(?, ?, ?)";
            // get primary info of question
            String question_content = (String) question.get("question");
            String type = (String) question.get("type");
            JSONArray options = (JSONArray) question.get("options");
            MySQLHelper.excuteUpdate(sql_insert_question, qn_id, question_content, type);
            question_id = MySQLHelper.getLastInsertId();
            if (options != null) {
                for (Object o :
                        options) {
                    JSONObject option = (JSONObject) o;
                    // get primary info of option
                    String mark = (String) option.get("mark");
                    String content = (String) option.get("content");

                    String sql_insert_option = "insert into options(question_id, mark, content) values(?, ?, ?)";
                    MySQLHelper.excuteUpdate(sql_insert_option, question_id, mark, content);
                }
            }
        }

        // 如果到达 commit 之前的所有步骤顺利完成,提交
        // 如果到达 commit 之前出错,所有事务自动回滚
        MySQLHelper.commit();
        MySQLHelper.closeConnection();
        return count;
    }

    public List<Questionnaire> getAllQuestionnaireByUserId(int user_id) {
        List<Questionnaire> list_qns = new ArrayList<>();
        String sql = "select qn_id, title, create_time from questionnaires where user_id = " + user_id;
        MySQLHelper.getConnection();
        List<Object[]> list_cols = MySQLHelper.excuteQuery(sql);

        for (Object[] col :
                list_cols) {
            Questionnaire qn = new Questionnaire(Integer.parseInt(col[0].toString()), col[1].toString(), (Date) col[2]);
            list_qns.add(qn);
        }
        MySQLHelper.closeConnection();
        return list_qns;
    }

    public JSONObject getQuestionnaireByQnId(int qn_id) {
        JSONObject qn = new JSONObject();

        String title = "";
        String description = "";
        JSONArray questions = new JSONArray();

        // 开始连接
        MySQLHelper.getConnection();
        // 该连接上的一个事务开始
        MySQLHelper.setAutoCommitFalse();

        String sql_query_qn = "select title, description from questionnaires where qn_id = " + qn_id;
        List<Object[]> list_cols = MySQLHelper.excuteQuery(sql_query_qn);
        for (Object[] col :
                list_cols) {
            title = col[0].toString();
            description = col[1].toString();
        }

        String sql_query_question = "select question_id, question, type from questions where qn_id = " + qn_id;
        list_cols = MySQLHelper.excuteQuery(sql_query_question);
        for (Object[] col :
                list_cols) {
            JSONObject question = new JSONObject();

            int question_id = (int) col[0];
            String question_content = (String) col[1];
            String type = (String) col[2];


            if (Objects.equals(type, "slc")) {
                JSONArray options = new JSONArray();
                String sql_query_options = "select mark, content from options where question_id = " + question_id;
                list_cols = MySQLHelper.excuteQuery(sql_query_options);
                for (Object[] col2 :
                        list_cols) {
                    JSONObject option = new JSONObject();

                    option.put("mark", col2[0]);
                    option.put("content", col2[1]);

                    options.add(option);
                }
                question.put("options", options);
            }

            question.put("question_id", (int) col[0]);
            question.put("question", (String) col[1]);
            question.put("type", (String) col[2]);
            questions.add(question);
        }

        qn.put("qn_id", qn_id);
        qn.put("title", title);
        qn.put("description", description);
        qn.put("questions", questions);

        MySQLHelper.commit();
        MySQLHelper.closeConnection();

        return qn;
    }
}
