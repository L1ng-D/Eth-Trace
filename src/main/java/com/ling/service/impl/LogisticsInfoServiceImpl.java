package com.ling.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.entity.Crop;
import com.ling.entity.LogisticsInfo;
import com.ling.mapper.CropMapper;
import com.ling.mapper.LogisticsInfoMapper;
import com.ling.service.CropService;
import com.ling.service.LogisticsInfoService;
import org.springframework.stereotype.Service;

@Service
public class LogisticsInfoServiceImpl extends ServiceImpl<LogisticsInfoMapper, LogisticsInfo> implements LogisticsInfoService {
}
