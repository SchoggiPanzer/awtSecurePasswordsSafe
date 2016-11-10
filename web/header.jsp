<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="include.jsp"/>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Password Safe</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <%
                    if (session.getAttribute("username") != null){ %>
                        <li><form action="logout.jsp">
                            <button type="submit" class="btn btn-default">Logout</button>
                        </form></li>
                <%  } %>
            </ul>
        </div>

    </nav>
