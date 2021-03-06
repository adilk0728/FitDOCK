package com.gymManagementSystem.GymCRM.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource datasource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		
		auth.jdbcAuthentication().dataSource(datasource);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/signup/**").permitAll()
		.antMatchers("/employee/**").hasRole("ADMIN")
		.antMatchers("/GymClass/**").hasRole("ADMIN")
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/customer/**").hasRole("CUSTOMER")
		.and()
		.formLogin()
		.defaultSuccessUrl("/home")
		.loginProcessingUrl("/authenticateTheUser")
		.permitAll()
		.and().logout().logoutSuccessUrl("/").permitAll().and()
		.exceptionHandling().accessDeniedPage("/error");
	}
	
	
	@Bean
	public UserDetailsManager userDetailsManager() {
		
		JdbcUserDetailsManager jdbcUserDetailsManager = new JdbcUserDetailsManager();
		
		jdbcUserDetailsManager.setDataSource(datasource);
		
		return jdbcUserDetailsManager; 
	}
	
	
}
