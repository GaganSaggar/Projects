package com.niec.citizen.config;
 


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
 
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
 
    @Autowired
    CustomSuccessHandler customSuccessHandler;
 
   /* @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("bill").password("abc123").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("root123").roles("ADMIN");
    }*/
    @Autowired
    DataSource dataSource;
    
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception
    {
    	auth.jdbcAuthentication().dataSource(dataSource)
    	.usersByUsernameQuery("select username , password, enabled from User where username=?")
    	.authoritiesByUsernameQuery("select username ,role from User where username=?");
    	}
    
   
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http.authorizeRequests() 
      .antMatchers("/","/home").permitAll()
       // .antMatchers("/home").access("hasRole('USER')")
        .antMatchers("/admin/**").access("hasRole('ADMIN')")
        .and().formLogin().loginPage("/logins").successHandler(customSuccessHandler)
        .usernameParameter("username").passwordParameter("password")
        .and().csrf().disable();
        //.and().exceptionHandling().accessDeniedPage("/Access_Denied");

    }
 
}