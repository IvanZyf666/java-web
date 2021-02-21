<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/20
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      /*
      Session
      用户会话
      服务器无法识别每一次HTTP请求的出处(不知道来自于哪个终端，只有请求信号)
      为了区分用户，不错发响应
      会话: 客户端与服务器之间发生的一系列请求和响应
      会话状态: 指服务器和浏览器在会话过程中产生的状态信息, 借助于会话状态, 服务器能够
        把属于同一次会话的一系列请求和响应关联起来。
      session 保存在服务器
      cookie 保存在客户端
    */
    %>
    <%
      String sessionId = session.getId();
    %>
    <%=sessionId%>
    <%
      request.getRequestDispatcher("login.jsp").forward(request, response);
    %>
  </body>
</html>
