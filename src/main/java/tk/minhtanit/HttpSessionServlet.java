package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/HttpSessionServlet")
public class HttpSessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        String title = null;
        Integer visitCounter = (Integer) session.getAttribute("visitCounter");
        Date lastAccessedTime = new Date(session.getLastAccessedTime());
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        if (visitCounter == null) {
            visitCounter = 1;
            title = "Welcome for first time...";
        } else {
            title = "Welcome again";
            visitCounter++;
        }
        session.setAttribute("visitCounter", visitCounter);

        try {
            PrintWriter out = response.getWriter();
            out.print("title: " + title +"\n" +
                    "<br>\n" +
                    "Number of Accesses to the resource: " + visitCounter +"\n" +
                    "<br>\n" +
                    "ID's session: " + session.getId() + "\n" +
                    "<br>\n" +
                    "Last Accessed Time 's session: " + format.format(lastAccessedTime));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
