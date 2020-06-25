package hai.duong.ass;

import java.util.concurrent.TimeUnit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@SpringBootApplication
public class BaitapApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(BaitapApplication.class, args);
	}

	
	 @Bean(name = "messageSource")
	    public MessageSource getMessageResource()  {
	        ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();
	         
	        // Đọc vào file i18n/messages_xxx.properties
	        // Ví dụ: i18n/messages_en.properties
	        messageResource.setBasename("classpath:i18n/messages");
	        messageResource.setDefaultEncoding("UTF-8");
	        return messageResource;
	    }
	 
	   @Bean(name = "localeResolver")
	    public CookieLocaleResolver getLocaleResolver()  {
	        CookieLocaleResolver resolver= new CookieLocaleResolver();
	        resolver.setCookieDomain("myAppLocaleCookie");
	        // 60 minutes 
	        resolver.setCookieMaxAge(60*60); 
	        return resolver;
	    } 
	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
	        localeInterceptor.setParamName("lang");
	         
	         
	        registry.addInterceptor(localeInterceptor).addPathPatterns("/**");
	    }
	    
	    
	    
	    
	    
		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
			registry.addResourceHandler("/static/**").addResourceLocations("/WEB-INF/static/")
			.setCacheControl(CacheControl.maxAge(2,TimeUnit.HOURS).cachePublic());
			
			
		}
}
