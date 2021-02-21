<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/17
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
    <h1>This is test1</h1>
    <%
        String idStr = request.getParameter("id");
        /*out.write(1);
        page.getClass();
        pageContext.getAttribute("id");*/
        Integer id = Integer.parseInt(idStr);
        id++;
        // 将数据存入到request中
        request.setAttribute("numberId", id);
        // 将请求转发给test2.jsp，生成目的地对象，调用forward方法传请求和响应
        request.getRequestDispatcher("test2.jsp").forward(request, response);
        // getRequestDispatcher().forward()就可以跳到另一个jsp
    %>
    <%=id%>

</body>
</html>
