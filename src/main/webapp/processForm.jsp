<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 26/11/2019
  Time: 08:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Process form</title>
    <meta charset="UTF-8"/>
</head>
<body>
    <h1>Result of processing form</h1>
    Username: <%=request.getParameter("username")%>
    <br>
    Password: <%=request.getParameter("password")%>
    <br>
    <br>
    <a href="index.jsp">Return to index</a>
</body>
</html>
