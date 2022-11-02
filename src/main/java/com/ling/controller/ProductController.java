package com.ling.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ling.common.R;
import com.ling.common.Result;
import com.ling.dto.ProductDto;
import com.ling.entity.Product;
import com.ling.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping("/product")
@Api(tags = "产品相关接口")
public class ProductController {

    @Autowired
    private ProductService productService;

    @ApiOperation(value = "新增农产品接口")
    @PostMapping("/add")
    public Result save(@RequestBody ProductDto productDto){
        log.info("product,{}", productDto);

        return productService.saveWithCrop(productDto);
    }

    @GetMapping("/page")
    public Result page(int page, int pageSize, String name){
        return productService.queryWithPage(page, pageSize, name);
    }



}
