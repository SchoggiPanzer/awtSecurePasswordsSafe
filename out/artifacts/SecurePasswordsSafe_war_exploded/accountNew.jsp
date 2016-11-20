<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%--
Form for create a new Account
--%>
<form class="form-horizontal" action="accountNewprocess.jsp">
    <div class="form-group">
        <label for="title" class="col-md-2 control-label"><fmt:message key="overv.title"/></label>
        <div class="col-md-4">
            <input type="text" name="title" id="title" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="website" class="col-md-2 control-label"><fmt:message key="acc.webs"/></label>
        <div class="col-md-4">
            <input type="text" name="website" id="website" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="username" class="col-md-2 control-label"><fmt:message key="wel.lbl.usern"/></label>
        <div class="col-md-4">
            <input type="text" name="username" id="username" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-md-2 control-label"><fmt:message key="wel.lbl.pw"/></label>
        <div class="col-md-4">
            <input type="text" name="password" id="password" class="form-control">
        </div>
        <div class="col-md-2">
            <input type="button" class="form-control btn btn-info" id="btnPasswordGen" value="<fmt:message key="acc.genPw"/>"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-2">
            <input type="submit" class="btn btn-primary form-control" value="<fmt:message key="acc.create"/>">
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
