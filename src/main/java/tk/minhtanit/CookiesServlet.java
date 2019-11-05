package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CookiesServlet")
public class CookiesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        boolean newUser = true;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("recurrentVisitor") && c.getValue().equals("yes")) {
                    newUser = false;
                    break;
                }
            }
        }
        String message = null;
        if (newUser) {
            Cookie cookieVisitor = new Cookie("recurrentVisitor", "yes");
            response.addCookie(cookieVisitor);
            message = "Thank you for visiting our site";
        } else {
            message = "Thank you for visiting our site AGAIN";
        }
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print("Message: " + message);
    }
}