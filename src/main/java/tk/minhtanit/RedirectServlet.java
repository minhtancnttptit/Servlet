package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // use the redirect to send respond
        String url = null;
        String browserType = request.getHeader("User-agent");
        System.out.println("Browser type: " + browserType);
        if (browserType != null) {
            if (browserType.contains("Trident"))
                url = "http://microsoft.com";
            else if (browserType.contains("Firefox"))
                url = "http://firefox.com";
            else if(browserType.contains("Chrome"))
                url = "http://google.com";
        }
        response.sendRedirect(url);

    }
}
