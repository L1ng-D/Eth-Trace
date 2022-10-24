package com.ling.common;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import java.util.HashMap;
import java.util.Map;

@Data
@ApiModel("返回结果")
public class R<T> {

    private Integer code; // 编码， 1成功  0和其他数字失败

    private String msg; //错误信息

    private T data; // 数据

    private Map map = new HashMap(); // 动态数据

    public static <T> R<T> success(T obj){
        R<T> r = new R<T>();
        r.data = obj;
        r.code = 1;
        return r;
    }

    public static <T> R<T> error(String msg){
        R r = new R();
        r.msg = msg;
        r.code = 0;
        return r;
    }

    public R<T> add(String key, Object value) {
        this.map.put(key, value);
        return this;
    }

}
