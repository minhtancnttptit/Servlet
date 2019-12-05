<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 05/12/2019
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Access to the JavaBean</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Access to the JavaBean</h1>
    <jsp:useBean id="rectangle" class="tk.minhtanit.beans.Rectangle"/>
    <jsp:setProperty name="rectangle" property="*"/>
    Width value: ${rectangle.width}
    <br>
    Length value: ${rectangle.length}
    <br>
    Area value: ${rectangle.area}
    <br>
    Caculate area value: ${rectangle.width * rectangle.length}

</body>
</html>
