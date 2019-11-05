package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HelloWorld")
public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPTE html>\n" +
                    "<html>\n" +
                    "<head>\n" +
                    "<title>HelloWorld Servlet</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "<h1>HelloWorld from the Servlet, the application name is " + request.getContextPath() + "</h1>\n" +
                    "</body>\n" +
                    "</html>");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
