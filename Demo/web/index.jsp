<%--
  Created by IntelliJ IDEA.
  User: 83532
  Date: 2021/2/17
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Test1</h1>
  <%-- 添加jsp脚本 --%>
  <%
    String str = "Hello World";
    System.out.println(str); // 在控制台输出的 (页面能看到的要用write写 )
  %>
  <%-- 添加jsp声明 --%>
  <%!
    public String test(){
      return "HelloWorld";
    }
  %>
  <%-- 声明方法写到感叹号里面，调方法写到不带感叹号的里 --%>
  <%
    // System.out.println(test());
    String s1 = test();
  %>
  <%-- jsp表达式: 想把内容放到页面输出 <%=java变量%> --%>
  <%=s1%>

  <%
    /* JSP 内置对象 9 个
    * request : 表示一次请求，HttpServletRequest
    * response : 表示一次响应，HttpServletResponse
    * pageContext : 页面上下文，获取页面信息，PageContext
    * session : 表示一次会话,保存用户信息,HttpSession从连接到结束(保护多个请求和响应)
    * application : 表示当前的Web应用,全局对象,保存所有用户共享信息,ServletContext
    * config : 当前JSP对应的Servlet的ServletConfig对象,获取当前Servlet的信息
    * out : 向浏览器输出数据，jspWriter
    * page : 当前JSP对应的Servlet对象， Servlet
    * exception : 表示JSP页面发生的异常，Exception
    * 常用的有: request, response, session, application, pageContext
    * */

    /*
    * request 常用方法:
    * String getParameter(String key) 获取客户端传来的参数
    * void setAttribute(String key, Object value) 通过k-v的形式保存数据,用于jsp内部传递数据
    * Object getAttribute(String key) 通过key取出value (jsp内部资源)
    * RequestDispatcher getRequestDispatcher(String Path) 用于请求转发(跳JSP)
    * String[] getParameterValues(): 当对key值相同的参数传入多个值时,默认只能显示第一个,用这个方法获取多个同名参数
    * void setCharacterEncoding("UTF-8") 指定请求的编码
    */

    /*
    HTTP 请求状态码
    200: 正常
    404: 资源找不到
    400: 请求类型不匹配
    500: Java程序抛出异常
    */

    /*
      response 常用方法:
        1.sendRedirect(String path) 重定向, 页面之间的跳转。
        与转发getRequestDispatcher的区别: 转发将同一个请求传给下个页面，重定向创建一个新的请求
        重定向,地址栏url也会改变
        如果两个页面之间要用request来传递值，只能用转发，不能用重定向
        用户登录: 如果用户名和密码正确，则跳转到首页(转发)，展示用户名，
          否则重新回到登录页面(重定向).
    */
    /*
      Session
      用户会话
      服务器无法识别每一次HTTP请求的出处(不知道来自于哪个终端，只有请求信号)
      为了区分用户，不错发响应
      会话: 客户端与服务器之间发生的一系列请求和响应
      会话状态: 指服务器和浏览器在会话过程中产生的状态信息, 借助于会话状态, 服务器能够
        把属于同一次会话的一系列请求和响应关联起来。
      具体见demo2
    */

  %>

</body>
</html>
