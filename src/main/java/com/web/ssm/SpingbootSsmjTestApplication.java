package com.web.ssm;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.web.ssm")
public class SpingbootSsmjTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpingbootSsmjTestApplication.class, args);
	}
}
