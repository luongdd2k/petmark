package com.springboot.PetMark.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.springboot.PetMark.service.impl.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
    private UserDetailsServiceImpl userDetailsService;
	@Autowired
    private DataSource dataSource;
	
	@Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }
	
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
 
        http.csrf().disable();

        http.authorizeRequests().antMatchers("/", "/CheckLogin", "/CheckLogout", "/css/**", "/Script/**").permitAll();
 
        http.authorizeRequests().antMatchers("/CartItem/**", "/Profile").access("hasAnyRole('ROLE_MEMBER', 'ROLE_ADMIN', 'ROLE_STAFF')");

        http.authorizeRequests().antMatchers("/admin/UserManagement/**").access("hasRole('ROLE_ADMIN')");
        
        http.authorizeRequests().antMatchers("/admin/**").access("hasAnyRole('ROLE_STAFF', 'ROLE_ADMIN')");
 
        http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");

        http.authorizeRequests().and().formLogin()
        
                .loginProcessingUrl("/CheckLogin") 
                .loginPage("/index")
                .defaultSuccessUrl("/LoggedInSuccessfully", true)
                .failureUrl("/404")
                .usernameParameter("sl_login_username")
                .passwordParameter("sl_login_password")
          
                .and().logout().logoutUrl("/CheckLogout").logoutSuccessUrl("/index");
 

    }
 
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl db = new JdbcTokenRepositoryImpl();
        db.setDataSource(dataSource);
        return db;
    }
	
	
	
	
	
	
	
	
}
