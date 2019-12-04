<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 26/11/2019
  Time: 08:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Expressions with JSPs</title>
    <meta charset="UTF-8"/>
</head>
<body>
    <h1>Expressions with JSPs</h1>
    Concatenation: <%="MinhTanIT"%>
    <br>
    Mathematical Operations: <%=2 * 5 - 1%>
    <br>
    Sestion id: <%=session.getId()%>
    <br>
    <a href="index.jsp.">Return to index</a>
</body>
</html>
