<%@ page import="bean.AccountDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="acc" class="bean.Account"/>
<jsp:setProperty name="acc" property="*"/>

<html>
<body>
    <%
        String accId = request.getParameter("accountId");
        System.out.println(accId);
        int id = Integer.parseInt(accId);

        System.out.println(acc.getTitle());
        System.out.println(acc.getWebsite());
        System.out.println(acc.getUsername());
        System.out.println(acc.getPassword());

        boolean updated = AccountDao.update(id, acc);

        if(updated) response.sendRedirect("overview.jsp");
        else response.sendRedirect("error.jsp");
    %>
</body>
</html>
