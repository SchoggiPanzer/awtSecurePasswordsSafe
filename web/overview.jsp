<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.OverviewDao" %>
<%@ page import="bean.Account" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Account> accounts = OverviewDao.getAccountsById(1);
%>

<html>
<head>
    <title>overview</title>
</head>
<body>
    <form name="accounts" >
        <tr>
            <td>Title</td>
            <td>URL</td>
            <td>Username</td>
            <td>Password</td>
            <td>Options</td>
        </tr>
        <c:forEach items="$(accounts)" var="account">
            <tr>
                <td><c:out value="$(account.title)" />></td>
                <td><c:out value="$(account.website)" />></td>
                <td><c:out value="$(account.username)" />></td>
                <td><c:out value="$(account.password)" />></td>
                <td></td>
            </tr>
        </c:forEach>
    </form>
</body>
</html>
