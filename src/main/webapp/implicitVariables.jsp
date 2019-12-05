<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 05/12/2019
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>EL and implitcit variables</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>EL and implicit variables</h1>
    <ul>
        <li>Application Name: ${pageContext.request.contextPath}</li>
        <li>Client browser: ${header["User-Agent"]}</li>
        <li>Session id: ${cookie.JSESSIONID.value}</li>
        <li>Web server: ${pageContext.servletContext.serverInfo}</li>
        <li>Value for User ${param["user"]}</li>
    </ul>
</body>
</html>
