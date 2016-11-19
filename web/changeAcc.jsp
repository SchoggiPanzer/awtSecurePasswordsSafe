<%@ page import="bean.Account" %>
<%@ page import="bean.AccountDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%--
Form for create a new Account
--%>


<form action="changeAccProcess.jsp">
    <%
        String accId = request.getParameter("accountId");
        System.out.println(accId);
        int id = Integer.parseInt(accId);
        Account acc;
        acc = AccountDao.getAcc(id);
    %>
    <label for="title"><fmt:message key="overv.title"/></label>
    <input type="text" name="title" id="title" value="<%out.print(acc.getTitle());%>">
    <br>
    <label for="website"><fmt:message key="acc.webs"/></label>
    <input type="text" name="website" id="website" value="<%out.print(acc.getWebsite());%>">
    <br>
    <label for="username"><fmt:message key="wel.lbl.usern"/></label>
    <input type="text" name="username" id="username" value="<%out.print(acc.getUsername());%>">
    <br>
    <label for="password"><fmt:message key="wel.lbl.pw"/></label>
    <input type="text" name="password" id="password" value="<%out.print(acc.getPassword());%>"><br><br>
    <input type="submit" name="<fmt:message key="acc.create"/>">
</form>

<form name="Change Account" action="changeAcc.jsp">
    <label for="title"><fmt:message key="overv.title"/></label>
    <input type="text" name="title" id="titleChg">
    <br>
    <label for="website"><fmt:message key="acc.webs"/></label>
    <input type="text" name="website" id="websiteChg">
    <br>
    <label for="username"><fmt:message key="wel.lbl.usern"/></label>
    <input type="text" name="username" id="usernameChg">
    <br>
    <label for="password"><fmt:message key="wel.lbl.pw"/></label>
    <input type="text" name="password" id="passwordChg"><br><br>
    <input type="button" class="btnPasswordGen" value=
            <fmt:message key="acc.genPw"/>/>
    <br>
    <input type="submit" name="<fmt:message key="acc.change"/>">
</form>
</body>
<script type="application/javascript">
    $("btnPasswordGen").click(function () {
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
