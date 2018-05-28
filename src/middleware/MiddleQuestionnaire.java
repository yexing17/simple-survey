package middleware;

public class MiddleQuestionnaire {
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    private int user_id;
    private String title;
    private String description;
    private String status;
    private int question_count;
    private MiddleQuestion[] questions;

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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getQuestion_count() {
        return question_count;
    }

    public void setQuestion_count(int question_count) {
        this.question_count = question_count;
    }

    public MiddleQuestion[] getQuestions() {
        return questions;
    }

    public void setQuestions(MiddleQuestion[] questions) {
        this.questions = questions;
    }
}
