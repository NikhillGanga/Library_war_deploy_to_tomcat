package com.example.training.library.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

public class SpringWebInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext context =
                new AnnotationConfigWebApplicationContext();
        context.register(SpringConfig.class);
        context.setServletContext(servletContext);
        context.refresh();

        
        servletContext.setAttribute(
            "org.springframework.web.context.WebApplicationContext.ROOT",
            context
        );
    }
}