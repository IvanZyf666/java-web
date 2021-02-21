<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/21
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/Demo2_war_exploded/login" method="post"> <!-- 这里可以把jsp网页关联java class -->
        <table>
            <tr>
                <td>
                    用户名:
                </td>
                <td>
                    <input type="text" name="username"/>
                </td>
            </tr>
            <tr>
                <td>
                    密码:
                </td>
                <td>
                    <input type="password" name="password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="登录"/>
                </td>
                <td>
                    <input type="reset" value="重置"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
