<%@ page import="tk.minhtanit.utility.Conversions" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 28/11/2019
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="application/vnd.ms-excel" %>
<%
    String fileName = "report.xls";
    response.setHeader("Content-Disposition", "inline; filename=" + fileName);
%>
<html>
<head>
    <title>Excel Report</title>
</head>
<body>
    <h1>Excell Report</h1>
    <br>
    <table border="1">
        <tr>
            <th>Course</th>
            <th>Description</th>
            <th>Start date</th>
        </tr>
        <tr>
            <td>1. Java Fundamentals</td>
            <td>We will learn the basic syntax of Java</td>
            <td><%=Conversions.format(new Date())%></td>
        </tr>
        <tr>
            <td>2. Programming with Java</td>
            <td>We will practice concepts of Object Oriented Programming</td>
            <td><%=Conversions.format(new Date())%></td>
        </tr>
    </table>
</body>
</html>
