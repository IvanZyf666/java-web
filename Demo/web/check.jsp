<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/20
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("admin") && password.equals("123123")) {
            //登录成功 转发
            request.setAttribute("name",username);
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }else {
            //登录失败 重定向
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
