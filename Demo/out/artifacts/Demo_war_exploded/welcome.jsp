<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/20
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String name = (String) request.getAttribute("name");

    %>
    欢迎回来! <%=name%>
</body>
</html>
