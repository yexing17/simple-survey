package db.entity;

import java.util.Date;

public class Questionnaire {
    private int qn_id;
    private int user_id;
    private String title;
    private String description;
    private Date create_time;
    private Date release_time;
    private Date close_time;

    public int getQn_id() {
        return qn_id;
    }

    public void setQn_id(int qn_id) {
        this.qn_id = qn_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getRelease_time() {
        return release_time;
    }

    public void setRelease_time(Date release_time) {
        this.release_time = release_time;
    }

    public Date getClose_time() {
        return close_time;
    }

    public void setClose_time(Date close_time) {
        this.close_time = close_time;
    }

    public Questionnaire(int qn_id, String title,  Date create_time, Date release_time, Date close_time) {
        this.qn_id = qn_id;
        this.title = title;
        this.create_time = create_time;
        this.release_time = release_time;
        this.close_time= close_time;
    }

    public Questionnaire(int qn_id, int user_id, String title, String description, Date create_time, Date release_time, Date close_time) {
        this.qn_id = qn_id;
        this.user_id = user_id;
        this.title = title;
        this.description = description;
        this.create_time = create_time;
        this.release_time = release_time;
        this.close_time = close_time;
    }
}
