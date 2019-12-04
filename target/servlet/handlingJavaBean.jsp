<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBeans Example</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>JavaBeans Example</h1>
    <a href="setterJsp.jsp">Modify JavaBean value</a>
    <br>
    <a href="getterJsp.jsp">Read JavaBean value</a>
    <br>
    Form 1:
    <br>
    <form name="form1" action="setterParamJsp.jsp">
        Width: <input type="text" name="widthParam">
        <br>
        Length: <input type="text" name="lengthParam">
        <input type="submit" value="submit">
    </form>
    <br>
    Form 2:
    <br>
    <form name="form2" action="setterAllParamsJsp.jsp">
        Width: <input type="text" name="width">
        <br>
        Length: <input type="text" name="length">
        <br>
        <input type="submit" value="submit">
    </form>
</body>
</html>
