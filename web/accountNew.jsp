<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%--
Form for create a new Account
--%>
<form name="add Account" action="accountNewprocess.jsp.jsp">
    <label for="title"><fmt:message key="overv.title"/></label>
    <input type="text" name="title" id="title">
    <br>
    <label for="website"><fmt:message key="acc.webs"/></label>
    <input type="text" name="website" id="website">
    <br>
    <label for="username"><fmt:message key="wel.lbl.usern"/></label>
    <input type="text" name="username" id="username">
    <br>
    <label for="password"><fmt:message key="wel.lbl.pw"/></label>
    <input type="text" name="password" id="password"><br><br>
    <input type="button" class="btnPasswordGen" value="<fmt:message key="acc.genPw"/>"/>
    <br>
    <input type="submit" name="<fmt:message key="acc.create"/>">
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
