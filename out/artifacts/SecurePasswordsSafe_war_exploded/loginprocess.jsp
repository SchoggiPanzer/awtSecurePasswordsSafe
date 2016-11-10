<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.LoginDao" %>
<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty name="obj" property="*"/>

<%
    boolean status = LoginDao.validate(obj);

    if(status){
        out.print("You successfully logged in "+ obj.getUname());
        session.setAttribute("session","TRUE");
    } else {
        out.print("Sorry, email or password error");
    }
%>