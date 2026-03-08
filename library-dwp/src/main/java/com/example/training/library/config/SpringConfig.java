package com.example.training.library.config;

import org.springframework.context.annotation.*;

@Configuration
@ComponentScan(basePackages = "com.training")
public class SpringConfig {
    // Nothing needed here!
    // HibernateUtil manages SessionFactory
    // @Repository on UserDao is enough for Spring to manage it
}