package tk.minhtanit;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ExcelGenerationServlet")
public class ExcelGenerationServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename = testExcel.xls");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setDateHeader("Exprires", -1);

            out.print("\tValues\n" +
                    "\t1\n" +
                    "\t2\n" +
                    "Total\t=SUM(B2:B3)");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
