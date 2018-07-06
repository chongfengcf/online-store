package com.oldstore.interceptor;

import com.oldstore.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SysLoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        if(url.indexOf("/login")>=0) {
            return true;
        }
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("sysuser");
        if(user!=null) {
            return true;
        }
        request.getRequestDispatcher("/WEB-INF/jsp/syslogin.jsp").forward(request, response);
        return false;
    }

}
