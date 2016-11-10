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

<html>
<head>
    <title>overview</title>
</head>
<body>
<form name="accounts">
    <table>
        <tr>
            <td>Title</td>
            <td>URL</td>
            <td>Username</td>
            <td>Password</td>
            <td>Options</td>
        </tr>
        <%
            int id = Integer.parseInt(session.getAttribute("user_id").toString());
            List<Account> accounts = OverviewDao.getAccountsById(id);

            for (Account acc : accounts) {
                out.print("<tr><td>");
                out.print(acc.getTitle());
                out.print("</td><td>");
                out.print(acc.getWebsite());
                out.print("</td><td>");
                out.print(acc.getUsername());
                out.print("</td><td>");
                out.print(acc.getPassword());
                out.print("</td><td>");
                out.print("</td></tr>");
            }
        %>
    </table>
</form>
<a href="accountNew.jsp">Create new account</a>
</body>
</html>