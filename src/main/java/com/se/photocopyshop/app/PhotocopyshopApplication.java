package com.se.photocopyshop.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.se.photocopyshop.dao")
@EntityScan("com.se.photocopyshop.entity")
@ComponentScan("com.se.photocopyshop.*")
public class PhotocopyshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(PhotocopyshopApplication.class, args);
	}

}
