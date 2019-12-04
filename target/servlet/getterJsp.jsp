<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP that reads JavaBean values</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>JSP that reads JavaBean values</h1>
    <jsp:useBean id="rectangle" class="tk.minhtanit.beans.Rectangle" scope="session"/>
    <br>
    Width value: <jsp:getProperty name="rectangle" property="width"/>
    <br>
    Length value: <jsp:getProperty name="rectangle" property="length"/>
    <br>
    Area value: <jsp:getProperty name="rectangle" property="area"/>
    <br>

</body>
</html>
