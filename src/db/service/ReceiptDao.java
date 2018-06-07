package db.service;

import db.util.MySQLHelper;
import db.util.TimeTool;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class ReceiptDao {
    public int addReceipt(JSONObject receipt) {
        int count = 0;
        int receipt_id;

        MySQLHelper.getConnection();
        MySQLHelper.setAutoCommitFalse();

        String sql_insert_receipt = "insert into receipts(qn_id, submit_time, submit_ip) values(?, ?, ?)";

        int qn_id = (int) receipt.get("qn_id");
        String submit_time = TimeTool.getDateTimeNowString();
        String submit_ip = (String) receipt.get("submit_ip");
        JSONArray answers = (JSONArray) receipt.get("answers");

        count = MySQLHelper.excuteUpdate(sql_insert_receipt, qn_id, submit_time, submit_ip);

        receipt_id = MySQLHelper.getLastInsertId();
        for (Object a :
                answers) {
            JSONObject answer = (JSONObject) a;

            int question_id = (int) answer.get("question_id");
            // receipt_id get from the last insert
            String answer_content = (String) answer.get("answer_content");

            String sql_answer_insert = "insert into answers(question_id, receipt_id, answer_content) values(?, ?, ?)";
            MySQLHelper.excuteUpdate(sql_answer_insert, question_id, receipt_id, answer_content);
        }

        MySQLHelper.commit();
        MySQLHelper.closeConnection();
        return count;
    }
}
