<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.AccountDao" %>
<jsp:useBean id="acc" class="bean.Account"/>
<jsp:setProperty name="acc" property="*"/>

<%-- Process for creating new Account --%>
<html>
<script>
    setTimeout(function() {
        document.location = "overview.jsp";
    }, 1000); // <-- this is the delay in milliseconds
</script>
<body>
<%
    int id = Integer.parseInt(session.getAttribute("user_id").toString());
    out.println(id);
    out.println(acc.getTitle());
    out.println(acc.getPassword());
    out.println(acc.getUsername());
    out.println(acc.getWebsite());
    boolean created = AccountDao.createNewAccount(id, acc);

    if(created){
        out.print("Account successfully created");
    } else {
        out.print("An error occurred");
    }
%>
</body>
</html>
