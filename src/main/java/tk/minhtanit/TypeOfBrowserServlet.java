package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TypeOfBrowser")
public class TypeOfBrowserServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            String title = null;
            String message = null;

            String browserType = request.getHeader("User-Agent");
            if(browserType != null) {
                if(browserType.contains("Trident")) {
                    title = "Internet Explore Browser";
                    message = "You are browsing with Internet Explore";
                } else if(browserType.contains("Firefox")) {
                    title = "FireFox Browser";
                    message = "You are browsing with Firefox";
                } else if(browserType.contains("Chrome")) {
                    title = "Chrome Browser";
                    message = "You are browsing with Chrome";
                }
            }

            out.print("<!DOCTYPE html>\n" +
                    "<html>\n" +
                    "<head>\n" +
                    "<title>" + title + "</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "<h1>Type of browser</h1>\n" +
                    "<br>\n" +
                    message + "\n" +
                    "</body>\n" +
                    "</html>");

        } catch (IOException e) {
                e.printStackTrace();
        }
    }
}
