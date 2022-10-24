package com.ling.controller;

import com.ling.common.R;
import com.ling.entity.Product;
import com.ling.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/product")
@Api(tags = "产品相关接口")
public class ProductController {

    @Autowired
    private ProductService productService;

    @ApiOperation(value = "新增农产品接口")
    @PostMapping("/add")
    public R<String> save(@RequestBody Product product){
        log.info("product,{}", product);
        productService.save(product);

        return R.success("上传农产品成功!");
    }



}
