<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 05/12/2019
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Expression Language Example</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Expression Language Example</h1>
    <br>
    <a href="implicitVariables.jsp?user=minhtanit">Implicit Object with EL</a>
    <br>
    HTML form:
    <br>
    <form name="form1" action="javaBeanJsp.jsp">
        Width: <input type="text" name="width"/>
        <br>
        Length: <input type="text" name="length"/>
        <input type="submit" value="submit"/>
    </form>
</body>
</html>
