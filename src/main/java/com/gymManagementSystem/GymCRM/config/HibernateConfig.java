package com.gymManagementSystem.GymCRM.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableTransactionManagement
@ComponentScan(value="com.gymManagementSystem.GymCRM")
@PropertySource("classpath:persistence-mysql.properties")
public class HibernateConfig implements WebMvcConfigurer {

	@Autowired
	private Environment env;

	@Bean
	public DataSource datasource() {

		ComboPooledDataSource datasource = new ComboPooledDataSource();

		try {
			datasource.setDriverClass(env.getProperty("jdbc.driver"));
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}

		datasource.setJdbcUrl(env.getProperty("jdbc.url"));
		datasource.setUser(env.getProperty("jdbc.user"));
		datasource.setPassword(env.getProperty("jdbc.password"));

		datasource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));

		datasource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));

		datasource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));

		datasource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));

		return datasource;
	}

	private int getIntProperty(String propName) {

		String propVal = env.getProperty(propName);

		// now convert to int
		int intPropVal = Integer.parseInt(propVal);

		return intPropVal;
	}
	
	@Bean
	public LocalSessionFactoryBean getSessionFactory() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
		factoryBean.setDataSource(datasource());
		Properties prop = new Properties();
		prop.put("hibernate.show_sql", "true");
		prop.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		factoryBean.setHibernateProperties(prop);
//		factoryBean.setAnnotatedPackages("com.gymManagementSystem.GymCRM");
		factoryBean.setPackagesToScan("com.gymManagementSystem.GymCRM");
		return factoryBean;
		
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager() {
		
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(getSessionFactory().getObject());
		return transactionManager;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	 registry
	 .addResourceHandler("/resources/**")
	 .addResourceLocations("/resources/");
	}
//	@Bean
//    public PlatformTransactionManager txManager() {
//        return new DataSourceTransactionManager(datasource());
//    }

//    @Override
//    public PlatformTransactionManager annotationDrivenTransactionManager() {
//        return txManager();
//    }
	
	
//	 @Bean
//	 public PlatformTransactionManager annotationDrivenTransactionManager() {
//	     return new DataSourceTransactionManager(datasource());
//	 }

}
