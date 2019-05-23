package com.xenosgrilda.spring.app.services;

import com.xenosgrilda.spring.app.models.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);
}
