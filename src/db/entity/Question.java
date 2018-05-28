package db.entity;

public class Question {
    private int question_id;
    private int qn_id;
    private String question;

    public int getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(int question_id) {
        this.question_id = question_id;
    }

    public int getQn_id() {
        return qn_id;
    }

    public void setQn_id(int qn_id) {
        this.qn_id = qn_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Question(int question_id, int qn_id, String question, String mark) {
        this.question_id = question_id;
        this.qn_id = qn_id;
        this.question = question;
    }
}
