package db.util;

import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class MySQLHelper {
    private static String url = "jdbc:mysql://jd-bj-0.hisun.ml:3306/qnqnqn?useUnicode=true&characterEncoding=utf8";
    private static String user = "qnqnqn";
    private static String password = "qnqnqn233";
    private static Connection connection = null;
    private static ResultSet resultSet = null;
    private static PreparedStatement preState = null;
    private static Driver driver;

    // 注册驱动和获得连接全部在这个静态块中实现
    // 要使用连接的方法直接通过连接来执行 prepareStatement 即可
    // 如果在这一步就报错了方法自然无法执行,不过应该能获取相应的错误信息(比如找不到驱动,连接被拒绝等)
    static {
        try {
            driver = new Driver();
            DriverManager.deregisterDriver(driver);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void getConnection() {
        Properties userInfo = new Properties();
        userInfo.setProperty("user", user);
        userInfo.setProperty("password", password);
        try {
            connection = driver.connect(url, userInfo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 为 preState setType 该怎么判定到底传入的是什么类型的数据
     * <strike>不指定 set 的类型直接 setObject 会有上面问题吗?</strike>
     * 用 instanceof 或者 className() 判定做一个实例对象的类型判断
     * 已加入 Jakarta JDBC 笔记 TODO
     *
     * @param sql
     * @param paras
     * @return
     */
    public static int excuteUpdate(String sql, Object... paras) {
        int effectRows = 0;
        try {
            preState = connection.prepareStatement(sql);
            for (int i = 1; i <= paras.length; i++) {
                preState.setObject(i, paras[i - 1]);
            }
            effectRows = preState.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return effectRows;
    }

    /**
     * 本行只返回 List<Object[]>,其中每个 Object 数组存储数据库中一行的数据
     * Dao 类再对 Object 中的来自数据库一行中(可能)不同的每个字段数据进行不同处理
     *
     * @param sql
     * @param paras
     * @return
     */
    public static List<Object[]> excuteQuery(String sql, Object... paras) {
        List<Object[]> list = new ArrayList<>();
        try {
            // 平稳退化用代码
            /*
            if (connection == null) {
                Properties userInfo = new Properties();
                userInfo.setProperty("user", user);
                userInfo.setProperty("password", password);
                connection = driver.connect(url, userInfo);
            }
            */
            preState = connection.prepareStatement(sql);
            for (int i = 1; i <= paras.length; i++) {
                preState.setObject(i, paras[i - 1]);
            }
            resultSet = preState.executeQuery();
            ResultSetMetaData meta = resultSet.getMetaData();
            int colCount = meta.getColumnCount();
            while (resultSet.next()) {
                Object[] objs = new Object[colCount];
                for (int i = 0; i < objs.length; i++) {
                    objs[i] = resultSet.getObject(i + 1);
                }
                list.add(objs);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static int getLastInsertId() {
        int id = 0;
        try {
            preState = connection.prepareStatement("select last_insert_id()");
            resultSet = preState.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(1);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    public static Object getValue(String sql) {
        Object max = new Object();
        try {
            preState = connection.prepareStatement(sql);
            resultSet = preState.executeQuery();
            while (resultSet.next()) {
                max = resultSet.getObject(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return max;
    }

    public static void setAutoCommitFalse() {
        try {
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void commit() {
        try {
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeConnection() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preState != null) {
                preState.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Properties userInfo = new Properties();
        userInfo.setProperty("user", user);
        userInfo.setProperty("password", password);
        try {
            connection = driver.connect(url, userInfo);
            if (connection != null) {
                System.out.println("success");
            }
        } catch (Exception e) {

        }
    }
}
