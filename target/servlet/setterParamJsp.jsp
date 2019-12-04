<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP that modifies a JavaBean by parameters</title>
    <meta charset="UTF-8"/>
</head>
<body>
    <h1>JSP that modifies a JavaBean by parameters</h1>
    <jsp:useBean id="rectangle" class="tk.minhtanit.beans.Rectangle" scope="session"/>
    Modification of attributes:
    <br>
    <jsp:setProperty name="rectangle" property="width" param="widthParam"/>
    New width value: <%=request.getParameter("widthParam")%>
    <br>
    <jsp:setProperty name="rectangle" property="length" param="lengthParam"/>
    New length value: <%=request.getParameter("lengthParam")%>

</body>
</html>
