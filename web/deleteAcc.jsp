<%@ page import="bean.AccountDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>
<%
    String accId = request.getParameter("accId");
    int id = Integer.parseInt(accId);

    boolean success = AccountDao.deleteAcc(id);

    if(success) response.sendRedirect("overview.jsp");
    else response.sendRedirect("overview.jsp");
%>
</body>
</html>
