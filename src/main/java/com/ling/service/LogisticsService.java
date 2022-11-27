package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.Logistics;


public interface LogisticsService extends IService<Logistics> {
    Result queryWithPage(int page, int pageSize, String name, String destination);

    Result queryInfo(Long id);
}
