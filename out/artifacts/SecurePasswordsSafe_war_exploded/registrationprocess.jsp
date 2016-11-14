<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 30.10.16
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.RegisterDao" %>

<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty name="obj" property="*"/>

<script src="resources/js/jsPwSafe.js"></script>

<%
    int status = RegisterDao.register(obj);
    if (status>0) {
        response.sendRedirect("success.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>
