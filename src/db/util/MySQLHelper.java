package db.util;

import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class MySQLHelper {
    // start:初始化数据库连接相关对象为静态私有变量
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
    // end:结束数据库相关对象初始化

    // start:数据库功能性操作用方法
    /**
     * 获取一个连接到 MySQLHelper 的域作为私有静态域变量
     * 在关闭连接之前,其他方法将可以持续使用该连接
     */
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
     * 将自动提交事务关闭
     * 这样在同一个连接中,执行一系列操作时,在手动提交之前,所有的操作将绑定为一个事务(要么不做,要么都做)
     */
    public static void setAutoCommitFalse() {
        try {
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 提交当前进行的所有操作为一个事务(如果事务执行过程中没有出错的话)
     */
    public static void commit() {
        try {
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 依次释放数据库资源
     */
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
    // end:数据库功能性操作用方法

    // start:数据库数据操作方法
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
     * 返回值中每个 Object 数组存储数据库中一行的数据
     * Dao 类再对 Object 中的来自数据库一行中(可能)不同的每个字段数据进行不同处理
     *
     * @param sql
     * @param paras
     * @return List<Object   [   ]> list
     */
    public static List<Object[]> excuteQuery(String sql, Object... paras) {
        List<Object[]> list = new ArrayList<>();
        try {
            // 平稳退化用代码,但是会破坏手动提交事务的可用性(因为如果操作不是处于同一个连接中,没法作为同一个事务)
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

    /**
     * 获取上一次 insert 语句自动分配的自增 id 值
     * 常用于一连串的 insert,后 insert 的项需要把前 insert 的自增 id 作为其字段值的情况
     *
     * @return id
     */
    public static int getLastInsertId() {
        int id = 0;
        try {
            preState = connection.prepareStatement("select last_insert_id()");
            resultSet = preState.executeQuery();
            while (resultSet.next()) {
                id = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    /**
     * 用于明白查询结果只返回一个值的情况,但是为了保险,一般也不推荐使用
     *
     * @param sql
     * @return Object
     */
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
    // end:数据库数据操作方法
}
