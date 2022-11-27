package com.ling.dto;

import com.ling.entity.Logistics;
import lombok.Data;

@Data
public class LogisticsDto extends Logistics {

    private String company;

    private String area;

}
