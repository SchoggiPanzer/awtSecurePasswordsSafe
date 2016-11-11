<%--
  Created by IntelliJ IDEA.
  User: awt
  Date: 10.11.16
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.AccountNewDao" %>
<jsp:useBean id="acc" class="bean.Account"/>

<jsp:setProperty name="acc" property="*"/>
<html>
<script>
    setTimeout(function() {
        document.location = "overview.jsp";
    }, 1000); // <-- this is the delay in milliseconds
</script>
<head>
    <title>Created new Account</title>
</head>
<body>
<%
    int id = Integer.parseInt(session.getAttribute("user_id").toString());
    out.println(id);
    out.println(acc.getTitle());
    out.println(acc.getPassword());
    out.println(acc.getUsername());
    out.println(acc.getWebsite());
    boolean created = AccountNewDao.createNewAccount(id, acc);

    if(created){
        out.print("Account successfully created");
    } else {
        out.print("An error occurred");
    }
%>
</body>
</html>
