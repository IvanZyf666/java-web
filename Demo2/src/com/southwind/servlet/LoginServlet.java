package com.southwind.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private String myUsername;
    private String myPassword;
    @Override
    public void init(ServletConfig config) throws ServletException {
        // super.init(config);
        myUsername = config.getInitParameter("username");
        myPassword = config.getInitParameter("password");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if(username.equals(myUsername) && password.equals(myPassword)){
            // success
            // req.setAttribute("username",username);
            // 换成用session 存入值，整个会话都可以使用(刷新页面jsp)
            HttpSession session = req.getSession();
            session.setAttribute("username",username);
            // 用session可以用重定向(值已经存在服务器端里了)
            req.getRequestDispatcher("welcome.jsp").forward(req,resp);
        }else{
            //fail
            resp.sendRedirect("login.jsp");
        }
    }
}
