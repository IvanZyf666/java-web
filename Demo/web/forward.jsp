<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/20
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        // request.setAttribute("name","Tom");
        // request.getRequestDispatcher("target.jsp").forward(request,response);

        // 如果用重定向，这个tom传不过去，是创建了一个新的请求,url也会变
        response.sendRedirect("target.jsp");
    %>
</body>
</html>
