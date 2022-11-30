package com.ling.controller;

import com.ling.common.Result;
import com.ling.service.CropService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/crop")
public class CropController {

    @Resource
    private CropService cropService;

    @GetMapping("/page")
    public Result page(int page, int pageSize, String name, String place){
        return cropService.queryWithPage(page, pageSize, name, place);
    }

    @GetMapping("/{id}")
    public Result info(@PathVariable Long id){
        return cropService.queryInfo(id);
    }


}
