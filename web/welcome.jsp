<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<%-- Welcome page. Contains login and registration at the same Page --%>
<div class="row">
    <div class="col-md-4">
        <h1 class="col-md-offset-2">Login</h1>
        <form class="form-horizontal" action="loginprocess.jsp">
            <div class="form-group">
                <label for="log_uname" class="col-md-offset-2 col-md-3 control-label"><fmt:message key="wel.lbl.usern"/></label>
                <div class="col-md-6">
                    <input type="text" id="log_uname" name="uname" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="log_pw" class="col-md-offset-2 col-md-3 control-label"><fmt:message key="wel.lbl.pw"/></label>
                <div class="col-md-6">
                    <input type="password" id="log_pw" name="pw" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-5 col-md-2">
                    <input type="submit" class="btn btn-primary" value="Login">
                </div>
            </div>
        </form>
    </div>

    <div class="col-md-4">
        <h1 class="col-md-offset-2"><fmt:message key="wel.lbl.regtit"/></h1>
        <form class="form-horizontal" action="registrationprocess.jsp">
            <div class="form-group">
                <label for="reg_uname" class="col-md-offset-2 col-md-3 control-label"><fmt:message key="wel.lbl.usern"/></label>
                <div class="col-md-6">
                    <input type="text" id="reg_uname" name="uname" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="reg_pw" class="col-md-offset-2 col-md-3 control-label"><fmt:message key="wel.lbl.pw"/></label>
                <div class="col-md-6">
                    <input type="password" id="reg_pw" name="pw" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-5 col-md-2">
                    <input type="submit" class="btn btn-primary" value="<fmt:message key="wel.btn.lbl.reg"/>">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
