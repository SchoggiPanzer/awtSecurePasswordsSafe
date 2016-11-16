<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="bundles.text"/>
<html>
<head>
    <jsp:include page="include.jsp"/>
    <script type="text/javascript" src=https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery.jcryption.3.1.0.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <p class="navbar-brand">Password Safe</p>
            </div>

            <ul class="nav navbar-nav navbar-right lang">
                <li>
                    <form>
                        <select id="language" name="language" onchange="submit()">
                            <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                            <option value="de" ${language == 'de' ? 'selected' : ''}>German</option>
                            <option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
                        </select>
                    </form>
                </li>
                <% if (session.getAttribute("username") != null){ %>
                <li class="username">
                    <h4 style="float: left; margin-right: 5px">
                        Logged in as <% out.print(session.getAttribute("username")); %>
                    </h4>
                </li>
                <li class="btn-logout">
                    <form action="logout.jsp">
                        <button type="submit" class="btn btn-default">Logout</button>
                    </form>
                </li>
                <%  } %>
            </ul>
        </div>

    </nav>
