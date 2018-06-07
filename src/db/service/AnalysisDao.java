package db.service;

import db.util.MySQLHelper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class AnalysisDao {
    private JSONObject getOverviewData(int user_id) {
        JSONObject data = new JSONObject();

        // init overview's attribute data
        int qn_count = 0;
        int qn_release_count = 0;
        JSONObject receipt_data = new JSONObject();

        // init connection & set auto commit off
        MySQLHelper.getConnection();
        MySQLHelper.setAutoCommitFalse();

        String sql_query_qn_count = "select count(*) from questionnaires where user_id = " + user_id;



        // commit & close connection
        MySQLHelper.commit();
        MySQLHelper.closeConnection();

        return data;
    }
}
