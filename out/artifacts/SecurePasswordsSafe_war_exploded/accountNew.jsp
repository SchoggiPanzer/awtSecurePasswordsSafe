<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Account</title>
</head>
<body>
    <form name="new Account" action="accountNewprocess.jsp">
        <label for="title">Title</label>
        <input type="text" name="title" id="title">
        <label for="website">Website</label>
        <input type="text" name="website" id="website">
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
        <label for="password" >Password</label>
        <input type="password" name="password" id="password">
        <button id="btnPasswordGen">Generate Password</button>
        <input type="submit" name="Create">
    </form>
</body>
</html>
