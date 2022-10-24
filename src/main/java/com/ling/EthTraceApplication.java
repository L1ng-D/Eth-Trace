package com.ling;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@Slf4j
@ServletComponentScan
@SpringBootApplication
public class EthTraceApplication {

    public static void main(String[] args) {
        SpringApplication.run(EthTraceApplication.class, args);
    }

}
