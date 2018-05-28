package middleware;

public class MiddleQuestion {
    private String question;
    private String type;
    private MiddleOption[] options;

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public MiddleOption[] getOptions() {
        return options;
    }

    public void setOptions(MiddleOption[] options) {
        this.options = options;
    }
}
