<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 26/11/2019
  Time: 09:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scriptlets with JSP</title>
    <meta charset="UTF-8" />
</head>
<body>
    <h1>Criptlets with JSP</h1>
    <br>
    <%
        System.out.println("Greeting from scriptlets");
        out.println("Greeting from criptlets");
    %>
    <br>
    <%
        String applicationName = request.getContextPath();
        System.out.println("Application: " + applicationName    );
    %>
    <br>
    <%
        if (session != null && session.isNew()) {
    %>
    The session is new
    <%
        } else if (session != null) {
    %>
    The session is not new
    <%
        }
    %>
    <br>
    <%
        if (session != null && session.isNew()) {
            out.println("The session is new");
        } else if (session != null) {
            out.println("The session is not new");
        }
    %>
</body>
</html>
