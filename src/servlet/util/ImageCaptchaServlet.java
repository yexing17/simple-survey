package servlet.util;


import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

public class ImageCaptchaServlet extends HttpServlet{
    @Override
    public  void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // set the page no-cache
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // create image in the memory
        int width = 60, height = 20;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);

        // get the image context(上下文),可以理解为操作该图片的画布
        Graphics g = image.getGraphics();

        // setting the background color
        g.setColor(new Color(122, 123, 100));
        g.fillRect(0, 0, width, height);  // 填充一个 0~width 宽度 和 0~height 高度的矩形(rectangle)

        // setting the font
        g.setFont(new Font("Times New Roman", Font.PLAIN, 18));

        // create random object
        Random random = new Random();

        // create interference line(干扰线) in the image
        for (int i = 0; i < 200; i++) {
            int x = random.nextInt(width);  // return a random int in [0,bound)
            int y = random.nextInt(height);
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            g.drawLine(x, y, x + x1, y + y1);  // draw a line from (x, y) to (x + x1, y + y1) in this graphics context
        }

        // get 4 random numbers as the validated codes
        String validateCode = "";  // 随机字符分个设定不同的颜色写入图片,这个值是为了存入 session 验证用户输入的
        for (int i = 0; i < 4; i++) {
            String code = String.valueOf(random.nextInt(10));
            validateCode += code;
            g.setColor(new Color(30 + random.nextInt(160), 40 + random.nextInt(170), 50 + random.nextInt(180)));
            // resetting the image context's draw color,following handle will use this color
            g.drawString(code, 13 * i + 6, 16);  // 将当前的随机字符按照最左侧对准当前 image context 的 (x,y) 左边位置进行绘图
        }
        // 将随机字符串存入 session 待验
        request.getSession().setAttribute("validateCode", validateCode);  // servlet 中获取 session 的方法
        g.dispose();  // 释放该 image context 以及它使用的所有资源(比如说颜色设定),说明绘图结束

        // 输出图像到页面
        ImageIO.write(image, "JPEG", response.getOutputStream());  // 以 jpeg 的格式输出这个图片,并以 response 的输出流输出
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
