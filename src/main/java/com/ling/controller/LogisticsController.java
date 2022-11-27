package com.ling.controller;

import com.ling.common.Result;
import com.ling.service.LogisticsService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/logistics")
public class LogisticsController {

    @Resource
    private LogisticsService logisticsService;

    @GetMapping("/page")
    public Result page(int page, int pageSize, String name, String destination){
        return logisticsService.queryWithPage(page, pageSize, name, destination);
    }

    @GetMapping("/{id}")
    public Result info(@PathVariable Long id){
        return logisticsService.queryInfo(id);
    }


}
