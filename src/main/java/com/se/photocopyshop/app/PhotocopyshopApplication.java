package com.se.photocopyshop.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.se.photocopyshop.*")
public class PhotocopyshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(PhotocopyshopApplication.class, args);
	}

}
