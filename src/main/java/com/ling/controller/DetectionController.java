package com.ling.controller;

import com.ling.common.Result;
import com.ling.dto.ProductDto;
import com.ling.service.DetectionService;
import com.ling.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Slf4j
@RestController
@RequestMapping("/detection")
@Api(tags = "检测相关接口")
public class DetectionController {

    @Resource
    private DetectionService detectionService;

/*    @ApiOperation(value = "新增农产品接口")
    @PostMapping("/add")
    public Result save(@RequestBody ProductDto productDto){
        log.info("product,{}", productDto);

        return productService.saveWithCrop(productDto);
    }*/

    @GetMapping("/page")
    public Result page(int page, int pageSize, String name, Integer isValid){
        return detectionService.queryWithPage(page, pageSize, name, isValid);
    }



}
