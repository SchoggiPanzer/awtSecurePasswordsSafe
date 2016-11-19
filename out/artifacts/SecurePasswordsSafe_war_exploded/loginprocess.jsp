<%@ page import="bean.LoginDao" %>
<%@ page import="bean.User" %>
<%@ page import="static java.util.Objects.isNull" %>

<jsp:useBean id="obj" class="bean.User"/>
<jsp:setProperty name="obj" property="*"/>

<%-- Process for the login --%>
<%
    //Gets the data from the LoginDao
    User user = LoginDao.validate(obj);

    //Sets the session attributs when the login is ok, else sends the error Page
    if(!isNull(user)) {
        out.print("You successfully logged in "+ obj.getUname());
        session.setAttribute("session","TRUE");
        session.setAttribute("user_id", user.getId());
        session.setAttribute("username", user.getUname());
        response.sendRedirect("overview.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>