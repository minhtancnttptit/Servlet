<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: minhtanit
  Date: 05/11/2019
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello, I am a Java web app</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script type="text/javascript" src="functions.js"></script>
</head>
<body>
    <h1>Simple Java Web App Demo</h1>
    <p>To invoke the java servlet click <a href="HelloWorld">here</a></p>
    <h1>Servlet form</h1>
    <form name="form1" action="HandleServlet" method="post">
        Username: <input type="text" name="username"/>
        <br>
        Password: <input type="password" name="password" value=""/>
        <br>
        <input type="submit" value="Send">
    </form>
    <br>
    <form name="form2" action="HandlingFormServlet" method="post" onsubmit="return validateForm(this);">
        <input type="hidden" name="hidden" value="hiddenValue">
        <table width="200" id="one-column-emphasis">
            <caption>Data registration form</caption>
            <tr>
                <td class="oce-first">Username (*)</td>
                <td>
                    <input class="default" type="text" name="username" value="Write the username" onfocus="this.select();">
                </td>
            </tr>
            <tr>
                <td class="oce-first">Password (*)</td>
                <td>
                    <input class="default" type="password" name="password" onfocus="this.select();">
                </td>
            </tr>
            <tr>
                <td class="oce-first">Technologies of interest: (*)</td>
                <td>
                    Java <input type="checkbox" name="technology" value="java">
                    .Net <input type="checkbox" name="technology" value="net">
                    Php <input type="checkbox" name="technology" value="php">
                </td>
            </tr>
            <tr>
                <td class="oce-first">Gender: (*)</td>
                <td>
                    Male <input type="radio" name="gender" value="M">
                    Female <input type="radio" name="gender" value="F">
                </td>
            </tr>
            <tr>
                <td class="oce-first">Occupation: (*)</td>
                <td>
                    <select name="occupation" class="default">
                        <option value="">Select</option>
                        <option value="teacher">Teacher</option>
                        <option value="engineer">Engineer</option>
                        <option value="doctor">Doctor</option>
                        <option value="other">Other</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="oce-first">Favorite music: </td>
                <td>
                    <select name="music" multiple class="default">
                        <option value="rock">Rock</option>
                        <option value="pop">Pop</option>
                        <option value="salsa">Salsa</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="oce-first">Comments: </td>
                <td>
                    <textarea name="comments" cols="30" rows="2" class="default" onfocus="this.select();">
                        Write a text
                    </textarea>
                </td>
            </tr>
            <tr style="text-align: center;">
                <td>
                    <input type="reset" value="Clean" class="default">
                </td>
                <td>
                    <input type="submit" value="Send" class="default">
                </td>
            </tr>
        </table>
    </form>
    <br>
    <a href="HttpHeaderServlet">Link to HTTP Header Servlet</a>
    <br>
    <a href="TypeOfBrowser">Type of browser</a>
    <br>
    <h1>Redirect Example</h1>
    <a href="RedirectServlet">Link to the redirect Servlet</a>
    <br>
    <a href="Non">Link to non existence Resource</a>
    <br/>
    <fieldset>
        <legend>Authorization Form</legend>
        <form name="form1" action="ServletForm" method="post">
            Username: <input type="text" name="username">
            <br/><br/>
            Password: <input type="password" name="password">
            <br/><br/>
            <input type="submit" value="Send">
        </form>
    </fieldset>
    <br>
    <h1>Response Headers Example</h1>
    <a href="ExcelGenerationServlet">Link to servlet that generates an excel</a>
    <br>
    <a href="DateServlet">Link to servlet that updates the date</a>
    <br>
    <h1>Cookies Example</h1>
    <a href="CookiesServlet">Link to the Servlet that verifies if you have already visted the resource proviously</a>
    <h1>HttpSession Example</h1>
    <a href="HttpSessionServlet">Link to the HttpSession Servlet</a>
    <h1>Shopping Cart Example</h1>
    <form action="ShoppingCartServlet" method="post" name="form1">
        Item to add:
        <input type="text" name="item">
        <br>
        <input type="submit" value="Send">
    </form>
    <h1>Exercise of Hello World with JSPs</h1>
    <ul>
        <li>Hello World with HTML</li>
        <li> ${"Hello World with Expression Language (EL)"}
    </ul>
    <!--Some server-side values -->
    <ul>
        <li> Hello: <%= new Date()%>
        <li> Context Name of the application:
                <%= request.getContextPath()%>
        <li> Value of the parameter x:
                <%= request.getParameter("x")%>
    </ul>
    <br>
    <a href="expressions.jsp">Link to Expression JSP</a>
    <br>
    <form name="form1" action="processForm.jsp" method="post">
        Username: <input type="text" name="username">
        <br>
        Password: <input type="password" name="password">
        <br>
        <input type="submit" value="Send">
    </form>
    <br>
    <a href="scriptlets.jsp">Scriptlets Example</a>
    <br>
    <form action="backgroundColor.jsp">
        <input type="text" name="backgroundColor">
        <br>
        <input type="submit" value="Send">
    </form>
    <br>
    <a href="declaration.jsp">Example of Declaration</a>
    <br>
    <a href="JspDocument.jspx">Link to JSPx Document</a>
    <br>
    <a href="excelReport.jsp">Link to excel report</a>
    <br>
    <br>
    <h1>Static Inclusion</h1>

    <!--Code this for every menu-->
    <br>
    <!--main menu-->
    <span class="news" align="left">
      <a href="javascript:display('news');">
        <img border="0" src="http://icursos.net/en/Servlets/Lesson14/news.png">
      </a>
    </span>
    <span id="news" class="hide_menu">
      <!--Submenu-->
      <ul>
        <li><%@include file="new1.html" %></li>
        <li><%@include file="new2.html" %></li>
      </ul>
    </span>

    <!--Code this for every menu-->
    <br>
    <!--main menu-->
    <span class="videos" align="left">
      <a href="javascript:display('videos');">
        <img border="0" src="http://icursos.net/en/Servlets/Lesson14/videos.png">
      </a>
    </span>
    <span id="videos" class="hide_menu">
      <!--Submenu-->
      <ul>
        <li><%@include file="video1.html" %></li>
      </ul>
    </span>

    <br>
    <a href="dynamicInclusion.jsp">Link to a Dynamic Inclusion Example</a>
    <br>
    <a href="handlingJavaBean.jsp">Link to a Jsp handling JavaBean</a>
</body>
</html>
