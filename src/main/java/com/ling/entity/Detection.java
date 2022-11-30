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
@TableName("tb_detection")
public class Detection {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Long id;

    private Long productId;

    private String name;

    private String unity;

    private String director;

    private String img;

    private Integer isValid;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;


}
