<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 26/11/2019
  Time: 09:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String background = request.getParameter("backgroundColor");
    if (background == null || background.trim().isEmpty())
        background = "white";
%>
<html>
<head>
    <title>JSP Background Color</title>
    <meta charset="UTF-8" />
</head>
<body bgcolor="<%=background%>">
    <h1> Colored background applied: <%=background%></h1>
    <br>
    <a href="index.jsp">Return to index</a>
</body>
</html>
