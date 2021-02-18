package com.southwind.servlet;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

// 基于注解的方式 实现这个class的交互
@WebServlet("/demo1")
// 格式: WebServlet("/pattern")
// 浏览器http://localhost:8001/Demo_war_exploded/demo1?id=myparam

public class MyServlet implements Servlet {
    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        // 初始化: 仅第一次映射执行一次
        System.out.println("对servlet完成初始化...");
        // 对象的创建，通过反射机制，由tomcat容器完成,(实际:默认的构造器)
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        // 核心函数 处理逻辑
        System.out.println("执行了servlet业务方法...");
        String id = servletRequest.getParameter("id"); // 接受参数
        System.out.println("I'm Servlet, 接受参数是"+id);
        servletResponse.setContentType("text/html;charset=UTF-8"); // 解决中文乱码
        servletResponse.getWriter().write("你好! Client");
        // 浏览器http://localhost:8001/Demo_war_exploded/myservlet?id=myparam

    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        // 销毁
        System.out.println("释放了servlet对象");
    }
}