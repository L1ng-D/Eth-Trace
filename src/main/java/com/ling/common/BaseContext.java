package com.ling.common;

/**
 * 基于ThreadLocal封装工具类，用于保存和获取当前登录用户id
 */
public class BaseContext {

    private static ThreadLocal<Integer> threadLocal = new ThreadLocal<>();

    public static void setCurrentId(Integer id){
        threadLocal.set(id);
    }

    public static Integer getCurrentId(){
        return threadLocal.get();
    }

}
