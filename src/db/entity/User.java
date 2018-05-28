package db.entity;

public class User {
    private int u_id;  // 8位 int
    private String email;
    private String password;
    private long regdate;  // 以时间戳的形式存储
    private int isadmin;  // 以整型存储


    public User() {
        u_id = 0;
        email = "";
        password = "";
        regdate = 0;
        isadmin = 0;
    }

    /**
     * 用于插入一个人时的数据临时存储
     *
     * @param email
     * @param password
     */
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    /**
     * 用于存储查询的数据
     *
     * @param u_id
     * @param email
     * @param password
     * @param regdate
     * @param isadmin
     */
    public User(int u_id, String email, String password, long regdate, int isadmin) {
        this.u_id = u_id;
        this.email = email;
        this.password = password;
        this.regdate = regdate;
        this.isadmin = isadmin;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getRegdate() {
        return regdate;
    }

    public void setRegdate(long regdate) {
        this.regdate = regdate;
    }

    public int getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(int isadmin) {
        this.isadmin = isadmin;
    }
}
