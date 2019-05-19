package com.xenosgrilda.spring.app.dao;

import com.xenosgrilda.spring.app.models.Customer;

import java.util.List;

public interface CustomerDAO {

    public List<Customer> getCustomers();
}

/**
 * DAO (Data Access Object) is the layer that will interact with the Database, it should only have basic read/write
 * operations.
 *
 * Read more about DAO: https://pt.stackoverflow.com/questions/113840/como-funciona-o-padr%C3%A3o-dao
**/