package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        String newItem = request.getParameter("item");
        HttpSession session = request.getSession();
        List<String> items = (List<String>) session.getAttribute("items");
        if (items == null) {
            items = new ArrayList<>();
            session.setAttribute("items", items);
        }
        if (newItem != null && !newItem.trim().isEmpty()) {
            items.add(newItem);
        }
        try {
            PrintWriter out = response.getWriter();
            out.print("<h1>List of Items</h1>\n" +
                    "<br>\n");
            for (String item :
                    items) {
                out.print("<LI>" + item + "</LI>\n");
            }
            out.print("<br>\n" +
                    "<a href ='/Servlet'>Return</a>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
