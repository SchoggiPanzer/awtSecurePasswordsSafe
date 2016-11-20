<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- Process for logout. Deletes the session and go back to welcome page --%>
<%
    session.invalidate();
    response.sendRedirect("welcome.jsp");
%>


