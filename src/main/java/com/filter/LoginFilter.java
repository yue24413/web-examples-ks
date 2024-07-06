package com.filter;

import com.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebFilter("/welcome")
public class LoginFilter extends HttpFilter {
//    private List<String> excludes = List.of("/login");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
//        for(String exclude : excludes) {
//            if(exclude.equals(req.getServletPath())) {//login;继续执行链中的后续过滤器或直接访问目标资源。
//                chain.doFilter(req, res);
//                return;
//            }
//        }
        User user = (User) req.getSession().getAttribute("user");//取到set的user，getAttribute() 返回的是 Object 类型
        //如果会话中的 "user" 确实是一个 User 对象，那么这个转换是安全的；否则，如果 "user" 不是一个 User 对象，运行时将会抛出一个 ClassCastException 异常。
        if(user == null) {
            res.sendRedirect(req.getContextPath() + "/index.html");
        }else{
            chain.doFilter(req, res);
        }
    }
}
