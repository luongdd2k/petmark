package com.springboot.PetMark.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.springboot.PetMark.interceptor.LoginPathInterceptor;
import com.springboot.PetMark.interceptor.RequestLoggingInterceptor;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {
	
	@Bean
	LoginPathInterceptor loginPathInterceptor() {
         return new LoginPathInterceptor();
    }
	
	@Bean
	RequestLoggingInterceptor requestLoggingInterceptor() {
         return new RequestLoggingInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // can add any Interceptor
    	registry.addInterceptor(loginPathInterceptor())
    	.addPathPatterns("/isLoginFail").addPathPatterns("/CheckUser");
    	
    	registry.addInterceptor(requestLoggingInterceptor())
    	.addPathPatterns("/**");

    }
}
