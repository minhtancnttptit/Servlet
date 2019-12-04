<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP that modifies a JavaBean by Parameters</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>JSP thath modifies a JavaBean by Parameters</h1>
    <jsp:useBean id="rectangle" class="tk.minhtanit.beans.Rectangle" scope="session"/>
    <jsp:setProperty name="rectangle" property="*"/>
    All attributes were modified:
    <br>
    New width value: <%=request.getParameter("width")%>
    <br>
    New length value: <%=request.getParameter("length")%>
</body>
</html>
