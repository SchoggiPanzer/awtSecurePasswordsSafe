<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.AccountDao" %>

<html>
<body>
<%
    String accId = request.getParameter("accountId");

    int Id = Integer.parseInt(accId);

    boolean success = AccountDao.deleteAcc(Id);

    if(success) {
        System.out.println("Deleted Account with id " + accId);
        response.sendRedirect("overview.jsp");
    }
    else response.sendRedirect("error.jsp");
%>
</body>
</html>

