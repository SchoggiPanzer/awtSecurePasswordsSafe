<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
</head>
<body>
    <form action="registrationprocess.jsp">
        Firstname: <input type="text" name="fname" /><br/>
        Lastname: <input type="text" name="lname" /><br/>
        Username: <input type="text" name="uname" /><br/>
        Email: <input type="text" name="email"/><br/>
        Password: <input type="password" name="pw"/><br/>
        <input type="submit" value="Register">
    </form>
</body>
</html>
