<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/21
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //String username = (String)request.getParameter("username");
    %>
    欢迎回来! <%=session.getAttribute("username")%>
</body>
</html>
