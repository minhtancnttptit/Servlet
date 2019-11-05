package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ServletForm")
public class ServletForm extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            String correctUser = "admin";
            String correctPass = "admin";
            String pUser = request.getParameter("username");
            String pPass = request.getParameter("password");
            if(pUser.equals(correctPass) && pPass.equals(correctPass)) {
                out.print("<h1>Correct data\n" +
                        "<br>Username: " + pUser + "\n" +
                        "<br>Password: " + pPass + "\n" +
                        "</h1>");
            } else {
                response.sendError(response.SC_UNAUTHORIZED, "The credentials are incorrect");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
