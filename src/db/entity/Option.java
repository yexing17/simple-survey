package db.entity;

public class Option {
    private int option_id;
    private int question_id;
    private char mark;
    private String content;

    public Option(int option_id, int question_id, char mark, String content) {
        this.option_id = option_id;
        this.question_id = question_id;
        this.mark = mark;
        this.content = content;
    }

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
    }

    public int getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(int question_id) {
        this.question_id = question_id;
    }

    public char getMark() {
        return mark;
    }

    public void setMark(char mark) {
        this.mark = mark;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
