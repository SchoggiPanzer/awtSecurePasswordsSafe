<%@ page import="bean.OverviewDao" %>
<%@ page import="bean.Account" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<%-- Overviewpage when loged in. Shows all Accounts --%>
<form name="accounts">
    <table class="table">
        <thead class="thead-inverse">
            <tr>
                <td><fmt:message key="overv.title"/></td>
                <td>URL</td>
                <td><fmt:message key="wel.lbl.usern"/></td>
                <td><fmt:message key="wel.lbl.pw"/></td>
                <td><fmt:message key="overv.option"/></td>
            </tr>
        </thead>
        <%
            // Gets all Accounts and writte them out in a table
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

<%-- Form for creating new Account --%>
<form action="accountNew.jsp">
    <button type="submit" class="btn btn-default">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><fmt:message key="overv.newAcc"/>
    </button>
</form>

