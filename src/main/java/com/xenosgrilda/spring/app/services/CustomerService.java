package com.xenosgrilda.spring.app.services;

import com.xenosgrilda.spring.app.models.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    Customer getCustomer(int id);

    void saveCustomer(Customer customer);

    void deleteCustomer(int id);
}
