package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HandleServlet")
public class HandleServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("username: " + username);
        System.out.println("password: " + password);
        if (username.equals("admin")) {
            try {
                PrintWriter out = response.getWriter();
                out.print("<!DOCTYPE html>\n" +
                        "<html>\n" +
                        "<head>\n" +
                        "<title>Handle Parameter</title>\n" +
                        "</head>\n" +
                        "<body>" +
                        "doGet method send data to url\n" +
                        "<br>\n" +
                        "</body>\n" +
                        "</html>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        try {
            PrintWriter out = response.getWriter();
            out.print("<!DOCTYPE html>\n" +
                    "<html>" +
                    "<head>" +
                    "<title>Handling Parameter</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "The username parameter is: " + username + "\n" +
                    "<br>\n" +
                    "The password parameter is: " + password + "\n" +
                    "</body>\n" +
                    "</html>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("username: " + username);
        System.out.println("password: " + password);
        if (username.equals("admin")) {
            response.sendRedirect("http://google.com");
        } else {
            try {
                PrintWriter out = response.getWriter();
                out.print("<!DOCTYPE html>\n" +
                        "<html>" +
                        "<head>" +
                        "<title>Handling Parameter</title>\n" +
                        "</head>\n" +
                        "<body>\n" +
                        "The username parameter is: " + username + "\n" +
                        "<br>\n" +
                        "The password parameter is: " + password + "\n" +
                        "</body>\n" +
                        "</html>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
}
