package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.entity.Product;
import com.ling.mapper.ProductMapper;
import com.ling.service.ProductService;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {
    @Override
    public Result queryWithPage(int page, int pageSize, String name) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<Product> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(name), Product::getName, name);
        queryWrapper.eq(Product::getStatus, 1);
        // 添加排序条件
        queryWrapper.orderByAsc(Product::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }
}
