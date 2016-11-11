<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.RegisterDao" %>

<jsp:useBean id="usr" class="bean.User"/>

<jsp:setProperty name="usr" property="*"/>

<%
    int status = RegisterDao.register(usr);
    if (status>0) out.print("You are successfully registered");
    else out.print("Error");
%>
