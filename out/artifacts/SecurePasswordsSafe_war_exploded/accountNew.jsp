<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>

    <%--
    Form for create a new Account
    --%>
    <form name="new Account" action="accountNewprocess.jsp">
        <label for="title"><fmt:message key="overv.title"/></label>
        <input type="text" name="title" id="title">

        <label for="website"><fmt:message key="acc.webs"/></label>
        <input type="text" name="website" id="website">

        <label for="username"><fmt:message key="wel.lbl.usern"/></label>
        <input type="text" name="username" id="username">

        <label for="password" ><fmt:message key="wel.lbl.pw"/></label>
        <input type="password" name="password" id="password"></br></br

        <button id="btnPasswordGen"><fmt:message key="acc.genPw"/></button>
        <input type="submit" name="<fmt:message key="acc.create"/>">
    </form>
</body>
</html>
