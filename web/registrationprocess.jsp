<%@ page import="bean.RegisterDao" %>
<jsp:useBean id="obj" class="bean.User"/>
<jsp:setProperty name="obj" property="*"/>

<%
    /* Process for registration
    Gets result from RegisterDao and sends success or error page */
    int status = RegisterDao.register(obj);
    if (status>0) {
        response.sendRedirect("success.jsp");
    }
    else {
        response.sendRedirect("error.jsp");
    }
%>
