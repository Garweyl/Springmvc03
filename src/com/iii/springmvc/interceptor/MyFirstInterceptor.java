package com.iii.springmvc.interceptor;


import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义拦截器
 */

@Component
public class MyFirstInterceptor implements HandlerInterceptor{


    /**
     * 1
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        System.out.println("MyFirstInterceptor preHandle");
        return true;
    }


    /**
     * 2
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

        System.out.println("MyFirstInterceptor postHandle");
    }


    /**
     * 3
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param e
     * @throws Exception
     *
     * 当某个拦截器的preHandle返回false后，也会指定当前拦截器之前拦截器的agtercompletion
     * 当DispatcherServlet的doDispath方法抛出 异常，也可能会执行拦截器的afterComletion
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

        System.out.println("MyFirstInterceprot afterCompletion");
    }
}
