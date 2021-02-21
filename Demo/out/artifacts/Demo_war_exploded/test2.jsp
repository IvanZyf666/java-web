<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/19
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>title</title>
</head>
<body>
    <h1>This is test2</h1>
    <%
        Integer number = (Integer) request.getAttribute("numberId");
    %>
    <%=number%>
</body>
</html>
