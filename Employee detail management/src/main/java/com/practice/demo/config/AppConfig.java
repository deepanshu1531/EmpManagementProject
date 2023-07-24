package com.practice.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.practice.demo.interceptor.AuthInterceptor;

//---------------Interceptor Registered-------

@Configuration
//@ComponentScan("com.practice.demo.interceptor")
public class AppConfig implements WebMvcConfigurer{
	
	@Autowired
	AuthInterceptor authInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(authInterceptor).addPathPatterns("/app/**");
	}
	
}
