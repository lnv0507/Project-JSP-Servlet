package com.utils;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil {
    private static SessionUtil sessionUtil=null;
    public static SessionUtil getInstance(){
        if(sessionUtil==null){
            sessionUtil=new SessionUtil();
        }
        return sessionUtil;
    }
    public void putValue(HttpServletRequest request, String key,Object o){
        request.getSession().setAttribute(key,o);
    }
    public void removeValue(HttpServletRequest request,String key){
        request.getSession().removeAttribute(key);
    }
    public Object getValue(HttpServletRequest request,String key){
        return request.getSession().getAttribute(key);
    }
}
