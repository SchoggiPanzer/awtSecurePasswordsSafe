<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%
     session.invalidate();
     response.sendRedirect("welcome.jsp");
 %>


