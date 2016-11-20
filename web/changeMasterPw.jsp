<%@ page import="bean.Account" %>
<%@ page import="bean.AccountDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%--
Form for create a new Account
--%>
<form class="form-horizontal" action="changeMasterPwProcess.jsp">
    <%
        Object user_id = session.getAttribute("user_id");
        int id = (int) user_id;
    %>
    <div class="form-group">
        <label for="oldPw" class="col-md-2 control-label"><fmt:message key="change.oldPw"/></label>
        <div class="col-md-4">
            <input type="text" name="oldPw" id="oldPw" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="newPw" class="col-md-2 control-label"><fmt:message key="change.newPw"/></label>
        <div class="col-md-4">
            <input type="text" name="newPw" id="newPw" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="newPw2" class="col-md-2 control-label"><fmt:message key="change.newPw"/></label>
        <div class="col-md-4">
            <input type="text" name="newPw2" id="newPw2" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-2">
            <input type="submit" class="btn btn-primary form-control" value="<fmt:message key="acc.change"/>">
        </div>
    </div>
</form>

</body>
</html>
