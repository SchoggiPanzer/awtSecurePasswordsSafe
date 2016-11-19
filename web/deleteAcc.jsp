<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.AccountDao" %>

<html>
<body>
<%
    System.out.println("Hallo to accoutn delete");
    String accId = request.getParameter("accountId");
    System.out.println(accId);

    int Id = Integer.parseInt(accId);

    boolean success = AccountDao.deleteAcc(Id);

    System.out.println("success = " + success);

    if(success) response.sendRedirect("overview.jsp");
    else response.sendRedirect("error.jsp");
%>
</body>
</html>

