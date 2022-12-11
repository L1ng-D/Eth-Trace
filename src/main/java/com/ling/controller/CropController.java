package com.ling.controller;

import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.service.CropService;
import com.ling.util.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Slf4j
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

    @PostMapping("/add")
    public Result add(@RequestBody Crop crop){
        log.info("log =========> {}", crop.toString());
        crop.setUserId(UserHolder.getUser().getId());

        cropService.save(crop);
        return Result.ok(crop);
    }


}
