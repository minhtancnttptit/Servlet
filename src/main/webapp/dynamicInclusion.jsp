<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 04/12/2019
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dynamic Inclusion Example</title>
</head>
<body>
    <jsp:include page="WEB-INF/privateResource.jsp">
        <jsp:param name="backgroundColor" value="yellow"/>
    </jsp:include>


    <jsp:include page="publicResource.jsp"/>
</body>
</html>
