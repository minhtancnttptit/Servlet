package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet(name = "Servlet", urlPatterns = {"/HandlingFormServlet"})
public class HandlingFormServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String[] technologies = request.getParameterValues("technology");
            String gender = request.getParameter("gender");
            String occupation = request.getParameter("occupation");
            String[] music = request.getParameterValues("music");
            String comments = request.getParameter("comments");

            out.print("<!DOCTYPE html>\n" +
                    "<html>" +
                    "<head>" +
                    "<title>Servlet result</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "<h1>Parameters processed by the Servlet:<h1>\n" +
                    "<table border='1'>\n" +
                    "<tr>\n" +
                    "<td>Username</td>\n" +
                    "<td>" + username + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Password</td>\n" +
                    "<td>" + password + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Technologied</td>\n" +
                    "<td>" + Arrays.toString(technologies) + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Gender</td>\n" +
                    "<td>" + gender + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Occupation</td>\n" +
                    "<td>" + occupation + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Music</td>\n" +
                    "<td>" + Arrays.toString(music) + "</td>\n" +
                    "</tr>\n" +
                    "<tr>\n" +
                    "<td>Comments</td>\n" +
                    "<td>" + comments + "</td>\n" +
                    "</tr>\n" +
                    "</table>\n" +
                    "</body>\n" +
                    "</html>\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
