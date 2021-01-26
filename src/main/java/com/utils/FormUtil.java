package com.utils;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;

public class FormUtil {
    public static <T> T toModel(Class<T> tClass, HttpServletRequest request){
        T object =null;
            try {
                request.setCharacterEncoding("utf-8");
                object =tClass.newInstance();
                BeanUtils.populate(object,request.getParameterMap());
            } catch (InstantiationException|UnsupportedEncodingException|IllegalAccessException|InvocationTargetException e) {
                System.out.println(e.getMessage());
            }
        return object;

    }
}
