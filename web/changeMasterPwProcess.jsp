<%@ page import="bean.UserDao" %>
<%@ page import="bean.User" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 20.11.16
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script>
    setTimeout(function() {
        document.location = "overview.jsp";
    }, 1000); // <-- this is the delay in milliseconds
</script>
<body>
<%
    Object user_id = session.getAttribute("user_id");
    int id = (int) user_id;

    String oldPw = request.getParameter("oldPW");
    String newPw = request.getParameter("newPw");
    String newPw2 = request.getParameter("newPw2");

    String oldPwDb = UserDao.getPw(id);

    if((Objects.equals(oldPw, oldPwDb)) && (Objects.equals(newPw, newPw2))){
        boolean success = UserDao.changePw(newPw, id);
        if (success) out.print("Changed password");
        else response.sendRedirect("Something went wrong");
    } else {
        out.print("Wrong old Password or new passwords aren't equal");
    }
%>
</body>
</html>
