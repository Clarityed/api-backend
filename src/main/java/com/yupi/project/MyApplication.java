package com.yupi.project;

import com.yupi.project.provider.EmbeddedZooKeeper;
import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yupi.project.mapper")
@EnableDubbo
public class MyApplication {

    public static void main(String[] args) {
        new EmbeddedZooKeeper(2181, false).start();
        SpringApplication.run(MyApplication.class, args);
        System.out.println("dubbo service started");
    }

}
