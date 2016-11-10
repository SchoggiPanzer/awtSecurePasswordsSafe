<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<div class="wel_con">
    <div class="login_con">
        <h1>Login</h1>
        <form action="loginprocess.jsp" method="post">
            <label for="log_uname">Username:</label></br>
            <input type="text" id="log_uname" name="uname" required/></br></br>

            <label for="log_pw">Password:</label></br>
            <input type="password" id="log_pw" name="pw" required/></br></br>

            <button type="submit" class="btn btn-info">Login</button>
        </form>
    </div>
    <div class="reg_con">
        <h1>Registration</h1>
        <form action="registrationprocess.jsp">
            <label for="reg_uname">Username:</label></br>
            <input type="text" id="reg_uname" name="uname" required/></br></br>

            <label for="reg_pw">Password:</label></br>
            <input type="password" id="reg_pw" name="pw" required/></br></br>

            <button type="submit" class="btn btn-info">Register</button>
        </form>
    </div>
</div>

</body>
</html>
