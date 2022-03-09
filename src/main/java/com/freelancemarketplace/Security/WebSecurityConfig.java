package com.freelancemarketplace.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
 
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/login").authenticated()
            .anyRequest().permitAll()
            .and()
            .formLogin().permitAll()
                .loginPage("/login")
                .usernameParameter("email")
                .passwordParameter("password")
                             
            .and()
            .oauth2Login()
                .loginPage("/login")
                .userInfoEndpoint()
                    .userService(oauth2UserService);
        	
    }
     
    @Autowired
    private CustomerOAuth2UserService oauth2UserService;
     

}