package com.br.OMT.Hibernate;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateFactory {

    private static SessionFactory sessionFactory;

    /**
     * * Initializes the Hibernate SessionFactory.
     */
    public static synchronized void initSessionFactory() {
        if (getSessionFactory() != null) {
            throw new IllegalStateException("Hibernate SessionFactory is already initialized");
        }
        try {
            sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        } catch (HibernateException he) {
            System.err.println("Error creating Session: " + he);
            throw new ExceptionInInitializerError(he);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void closeSession() {
        if (sessionFactory != null) {
            try {
                sessionFactory.close();
            } catch (HibernateException ignored) {
                System.err.println("Couldn't close SessionFactory" + ignored);
            }
        }
    }
}
