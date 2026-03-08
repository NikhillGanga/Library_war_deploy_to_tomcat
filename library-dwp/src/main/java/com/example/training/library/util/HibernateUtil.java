package com.example.training.library.util;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.example.training.library.entity.Book;



public class HibernateUtil {

    private static SessionFactory sessionFactory;

    static {
        try {

            Configuration configuration = new Configuration();

      
            Properties settings = new Properties();
            settings.put("hibernate.connection.driver_class", "org.postgresql.Driver");
            settings.put("hibernate.connection.url", "jdbc:postgresql://localhost:5433/library");
            settings.put("hibernate.connection.username", "postgres");
            settings.put("hibernate.connection.password", "tiger");
            settings.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQL95Dialect");

            settings.put("hibernate.show_sql", "true");
            settings.put("hibernate.format_sql", "true");
            settings.put("hibernate.hbm2ddl.auto", "none"); // since table already exists

            configuration.setProperties(settings);

            
            configuration.addAnnotatedClass(Book.class);

            ServiceRegistry serviceRegistry =
                    new StandardServiceRegistryBuilder()
                            .applySettings(configuration.getProperties())
                            .build();

            sessionFactory = configuration.buildSessionFactory(serviceRegistry);

        } catch (Exception e) {
            System.err.println("=== HIBERNATE INIT FAILED ===");
            System.err.println("Cause: " + e.getMessage());
            e.printStackTrace();
            if (e.getCause() != null) {
                System.err.println("Root cause: " + e.getCause().getMessage());
            }
            throw new ExceptionInInitializerError(e);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}