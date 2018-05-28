import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.IOException;

public class test {
    public static void main(String[] args) throws IOException, ParseException {
        JSONObject questionnaire = new JSONObject();
        JSONParser parser = new JSONParser();

        // start content of questionnaire
        questionnaire.put("title", "test qn");
        questionnaire.put("description", "this is a test");
        questionnaire.put("question_count", 3);

        JSONArray questions = new JSONArray();
        for (int i = 0; i < 3; i++) {
            JSONObject question = new JSONObject();
            question.put("question", "question" + i);
            question.put("type", "slc");
            JSONArray options = new JSONArray();
            for (int j = 0; j < 4; j++) {
                JSONObject option = new JSONObject();
                option.put("mark", j);
                option.put("content", "option" + j);
                options.add(option);
            }
            question.put("options", options);
            questions.add(question);
        }
        questionnaire.put("questions", questions);
        // end questionnaire

        System.out.println(questionnaire);


    }
}
