<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.LoginDao" %>
<%@ page import="bean.User" %>
<%@ page import="static java.util.Objects.isNull" %>
<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty name="obj" property="*"/>

<%
    User user = LoginDao.validate(obj);

<<<<<<< HEAD
    if(!isNull(user)) {
=======
    if(status){
>>>>>>> master
        out.print("You successfully logged in "+ obj.getUname());
        session.setAttribute("session","TRUE");
        session.setAttribute("user_id", user.getId());
        session.setAttribute("username", user.getUname());
        response.sendRedirect("overview.jsp");
    } else {
        out.print("Sorry, email or password error");
    }
%>