package com.thenumber.guess;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.thenumber.guess"})
public class GuessApplication {

	public static void main(String[] args) {
		SpringApplication.run(GuessApplication.class, args);
	}

}
