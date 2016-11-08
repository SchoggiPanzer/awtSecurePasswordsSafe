<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Login Page</h3>
<%
    String profile_msg = (String)request.getAttribute("profile_msg");
    if(profile_msg != null) {
        out.print(profile_msg);
    }

    String login_msg = (String)request.getAttribute("login_msg");
    if(login_msg != null) {
        out.print(login_msg);
    }
%>
<br/>

<form action="loginprocess.jsp" method="post">
    Email: <input type="text" name="email"/><br/><br/>
    Password: <input type="password" name="pw"/><br/><br/>
    <input type="submit" value="Login">
</form>
</body>
</html>
