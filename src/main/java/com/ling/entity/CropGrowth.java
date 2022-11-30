package com.ling.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_crop_growth")
public class CropGrowth {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Long id;

    private Long cropId;

    private String info;

    private LocalDateTime updateTime;

}
