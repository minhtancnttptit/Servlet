package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/HttpHeaderServlet")
public class ServletHeaders extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            String httpMethod = request.getMethod();
            String uri = request.getRequestURI();
            out.print("<!DOCTYPE html>\n" +
                    "<html>\n" +
                    "<head>\n" +
                    "<title>HTTP Request Headers</title>\n" +
                    "</head>\n" +
                    "<body>\n" +
                    "<h1>HTTP Request Headers</h1>\n" +
                    "Http method: " + httpMethod + "\n" +
                    "<br>\n" +
                    "<Request URI: " + uri + "\n" +
                    "<br>\n" +
                    "<br>\n" +
                    "Host: " + request.getHeader("Host") + "\n" +
                    "<br>\n" +
                    "Browser: " + request.getHeader("User-Agent") + "\n" +
                    "<br>\n" +
                    "<br>\n");
            Enumeration<String> headers = request.getHeaderNames();
            while (headers.hasMoreElements()) {
                String headerName = headers.nextElement();
                System.out.println(headerName);
                out.println("<b>" + headerName + "</b>");
                out.println(request.getHeader(headerName));
                out.println("<br>");
            }
            out.print("</body>\n" +
                    "</html>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
