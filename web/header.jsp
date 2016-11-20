<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="bundles.text"/>

<%-- The Header for all Pages --%>
<html>
<head>
    <jsp:include page="include.jsp"/>
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <p class="navbar-brand">Password Safe</p>
            </div>
            <form class="navbar-form navbar-right">
                <%-- Selection for the language --%>
                <select id="language" name="language" onchange="submit()">
                    <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                    <option value="de" ${language == 'de' ? 'selected' : ''}>German</option>
                    <option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
                </select>
            </form>
            <%  // shows the username and the logout button just when someone is logged in
                if (session.getAttribute("username") != null){ %>
            <form class="navbar-form navbar-right" action="logoutProcess.jsp">
                <div class="form-group">
                    <label class="control-label"><fmt:message key="wel.lbl.usern"/>: <% out.print(session.getAttribute("username")); %></label>
                    <input type="submit" class="btn btn-warning" value="Logout"/>
                </div>

            </form>
            <%  } %>
        </div>
    </nav>
