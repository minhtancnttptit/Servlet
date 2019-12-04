<%
    String backgroundColor = request.getParameter("backgroundColor");
    if (backgroundColor == null || backgroundColor.trim().isEmpty()) {
        backgroundColor = "white";
    }
%>

<body bgcolor="<%=backgroundColor%>">
    Deploying the content from a private JSP in WEB-INF
</body>