package com.ling.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LogisticsInfo {
    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Long id;

    private Long logisticsId;

    private String info;


    /**
     * 更新时间
     */
    private LocalDateTime updateTime;
}
