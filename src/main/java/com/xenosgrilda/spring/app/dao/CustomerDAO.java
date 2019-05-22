package com.xenosgrilda.spring.app.dao;

import com.xenosgrilda.spring.app.models.Customer;

import java.util.List;

public interface CustomerDAO {

    public List<Customer> getCustomers();

    public List<Customer> addCustomer();
}

/**
 * DAO (Data Access Object) is the layer that will interact with the Database, it should only have basic read/write
 * operations.
 *
 * It should only have methods for the pertaining Class, in this case, the Customer. The DAO should never have any business logic.
 * That is a responsibility of the Service layer.
 *
 * Read more about DAO: https://pt.stackoverflow.com/questions/113840/como-funciona-o-padr%C3%A3o-dao
**/