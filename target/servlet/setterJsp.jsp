<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP that modifies a JavaBean</title>
</head>
<body>
    <h1>JSP that modifies a JavaBean</h1>
    <jsp:useBean id="rectangle" class="tk.minhtanit.beans.Rectangle" scope="session"/>
    Modify the attribute:
    <br>
    <%
        // Values in hard code
        int widthValue = 5;
        int lengthValue = 10;
    %>
    <jsp:setProperty name="rectangle" property="width" value="<%=widthValue%>"/>
    New width value: <%=widthValue%>
    <br>
    <jsp:setProperty name="rectangle" property="length" value="<%=lengthValue%>"/>
    New length value: <%=lengthValue%>


</body>
</html>
