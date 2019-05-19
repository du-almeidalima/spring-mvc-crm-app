package com.xenosgrilda.spring.app.dao;

import com.xenosgrilda.spring.app.models.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDAO{

    // Injecting Hibernate session factory from dispatcher-servlet.xml
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Customer> getCustomers() {
        Session session = sessionFactory.getCurrentSession();

        Query<Customer> query = session.createQuery("FROM Customer", Customer.class);

        List<Customer> customers = query.getResultList();

        return customers;
    }
}

/**
 * Session Factory : Note that this field name should be the same as the SessionFactory ID defined in the dispatcher-servlet.xml
 * @Transactional : This annotation eliminates the need of starting a session "session.beginTransaction()" and the "session.getTransaction().commit()"
 * @Repository :  This is also a spring-framework's annotation. When you annotate a class @Repository, spring container understands it's a DAO class and translates
 * all unchecked exceptions (thrown from DAO methods) into Spring DataAccessException. DAO class is the class where you write methods to perform operations over db.
 */
