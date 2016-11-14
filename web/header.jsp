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
                <p class="navbar-brand">Password Safe</p>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <%
                    if (session.getAttribute("username") != null){ %>
                        <li><form action="logout.jsp">
                            <h4 style="float: left; margin-right: 5px">
                                Logged in as <% out.print(session.getAttribute("username")); %>
                            </h4>
                            <button type="submit" class="btn btn-default">Logout</button>
                        </form></li>
                <%  } %>
            </ul>
        </div>

    </nav>
