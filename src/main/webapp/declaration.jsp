<%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 28/11/2019
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    // declare a variable with its get and set method

    private String user = "Tran Minh Tan";

    public void setUser(String user) {
        this.user = user;
    }

    public String getUser() {
        return this.user;
    }

    private int visitCounter = 1;
%>

<html>
<head>
    <title>Use of Declarations with JSP</title>
</head>
<body>
    <h1>Use of Declarations</h1>
    User using the attribute: <%=this.user%>
    <br>
    User using the method: <%=this.getUser()%>
    <br>
    Counter of visits since the server was restarted: <%=this.visitCounter++%>
</body>
</html>
