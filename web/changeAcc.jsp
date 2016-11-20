<%@ page import="bean.Account" %>
<%@ page import="bean.AccountDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%--
Form for create a new Account
--%>
<form class="form-horizontal" action="changeAccProcess.jsp">
    <%
        String accId = request.getParameter("accountId");
        System.out.println("account id = " + accId);
        int id = Integer.parseInt(accId);
        Account acc;
        acc = AccountDao.getAcc(id);
    %>
    <div class="form-group">
        <label for="title" class="col-md-2 control-label"><fmt:message key="overv.title"/></label>
        <div class="col-md-4">
            <input type="text" name="title" id="title" class="form-control" value="<%out.print(acc.getTitle());%>">
        </div>
        <div class="col-md-2">
            <input type="text" class="form-control" name="accountId"
                   value="<%out.print(accId);%>" style="visibility: hidden"/>
        </div>
    </div>
    <div class="form-group">
        <label for="website" class="col-md-2 control-label"><fmt:message key="acc.webs"/></label>
        <div class="col-md-4">
            <input type="text" name="website" id="website" class="form-control" value="<%out.print(acc.getWebsite());%>">
        </div>
    </div>
    <div class="form-group">
        <label for="username" class="col-md-2 control-label"><fmt:message key="wel.lbl.usern"/></label>
        <div class="col-md-4">
            <input type="text" name="username" id="username" class="form-control" value="<%out.print(acc.getUsername());%>">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-md-2 control-label"><fmt:message key="wel.lbl.pw"/></label>
        <div class="col-md-4">
            <input type="text" name="password" id="password" class="form-control" value="<%out.print(acc.getPassword());%>">
        </div>
        <div class="col-md-2">
            <input type="button" class="form-control btn btn-info" id="btnPasswordGen" value="<fmt:message key="acc.genPw"/>"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-2">
            <input type="submit" class="btn btn-primary form-control" value="<fmt:message key="acc.change"/>">
        </div>
    </div>
</form>

</body>
<script type="application/javascript">
    $("#btnPasswordGen").click(function () {
        var pw = randomPW();
        $("#password").val(pw);
    });

    function randomPW() {
        console.log("Generate PW");
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        for (var i = 0; i < 10; i++)
            text += possible.charAt(Math.floor(Math.random() * possible.length));

        return text;
    }
</script>
</html>
