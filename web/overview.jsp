<%@ page import="bean.OverviewDao" %>
<%@ page import="bean.Account" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<%-- Overviewpage when loged in. Shows all Accounts --%>
<div class="row">
    <div class="col-md-offset-1 col-md-2"><h4><fmt:message key="overv.title"/></h4></div>
    <div class="col-md-2"><h4>URL</h4></div>
    <div class="col-md-2"><h4><fmt:message key="wel.lbl.usern"/></h4></div>
    <div class="col-md-2"><h4><fmt:message key="wel.lbl.pw"/></h4></div>
    <div class="col-md-1"></div>
    <div class="col-md-1"></div>
</div>
<%
    // Gets all Accounts and writte them out in a table
    int id = Integer.parseInt(session.getAttribute("user_id").toString());
    List<Account> accounts = OverviewDao.getAccountsById(id);

    for (Account acc : accounts) {
%>
<div class="row">
    <div class="col-md-offset-1 col-md-2"><% out.print(acc.getTitle()); %></div>
    <div class="col-md-2"><% out.print(acc.getWebsite()); %></div>
    <div class="col-md-2"><% out.print(acc.getUsername()); %></div>
    <div class="col-md-2"><% out.print(acc.getPassword()); %></div>
    <div class="col-md-1">
        <form action="deleteAccProcess.jsp" class="form-inline">
            <button type="submit" class="btn btn-danger btn-sm" name="accountId"
                    value="<% out.print(acc.getID()); %>"><fmt:message key="overv.delete"/></button>
        </form>
    </div>
    <div class="col-md-1">
        <form action="changeAcc.jsp" class="form-inline">
            <button type="submit" class="btn btn-primary btn-sm" name="accountId"
                    value="<% out.print(acc.getID()); %>"><fmt:message key="overv.edit"/></button>
        </form>
    </div>
</div>
<% } %>

<%-- Form for creating new Account --%>
<form action="accountNew.jsp" class="col-md-offset-1">
    <button type="submit" class="btn btn-success"><fmt:message key="overv.newAcc"/></button>
</form>

