package com.ling.controller;

import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.CropGrowth;
import com.ling.service.CropGrowthService;
import com.ling.service.CropService;
import com.ling.util.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/crop")
public class CropController {

    @Resource
    private CropService cropService;

    @Resource
    private CropGrowthService cropGrowthService;

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
        log.info("userHolder =======> {}", UserHolder.getUser());
        crop.setUserId(UserHolder.getUser().getId());
        cropService.save(crop);
        return Result.ok(crop);
    }

    @PostMapping("/add/growth")
    public Result addGrowth(@RequestBody CropGrowth growth){
        Long userId = UserHolder.getUser().getId();
        growth.setUpdateUserId(userId);
        boolean isSuccess = cropGrowthService.save(growth);

        return Result.ok(isSuccess);
    }

    @GetMapping("/all")
    public Result all(){
        List<Crop> list = cropService.list();
        return Result.ok(list);
    }


}
