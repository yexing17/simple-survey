package db.service;

import db.entity.User;
import db.util.MySQLHelper;

import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public List<User> getAllUser() {
        List<User> list_users = new ArrayList<>();
        String sql = "select * from users";
        MySQLHelper.getConnection();
        List<Object[]> list_cols = MySQLHelper.excuteQuery(sql);
        for (Object[] col : list_cols) {
            User u = new User(
                    Integer.parseInt(String.valueOf(col[0])),
                    String.valueOf(col[1]),
                    String.valueOf(col[2]),
                    Long.parseLong(String.valueOf(col[3])),
                    Integer.parseInt(String.valueOf(col[4]))
            );
            list_users.add(u);
        }
        MySQLHelper.closeConnection();
        return list_users;
    }

    public String getPassword(String email) {
        String password = "";
        String sql = "select password from users where email = ?";
        MySQLHelper.getConnection();
        List<Object[]> list_cols = MySQLHelper.excuteQuery(sql, email);
        for (Object[] col : list_cols) {
            password = String.valueOf(col[0]);
        }
        return password;
    }

    public String getUser_id(String email) {
        String user_id = "";
        String sql = "select user_id from users where email = ?";
        MySQLHelper.getConnection();
        List<Object[]> list_cols = MySQLHelper.excuteQuery(sql, email);
        for (Object[] col : list_cols) {
            user_id = String.valueOf(col[0]);
        }
        return user_id;
    }

    public int addUser(User user) {
        int count = 0;
        String sql = "insert into users(email, password) values(?, ?)";
        MySQLHelper.getConnection();
        count = MySQLHelper.excuteUpdate(sql,
                user.getEmail(),
                user.getPassword()
        );
        MySQLHelper.closeConnection();
        return count;
    }

}
