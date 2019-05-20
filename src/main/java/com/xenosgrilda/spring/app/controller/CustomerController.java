package com.xenosgrilda.spring.app.controller;

import com.xenosgrilda.spring.app.dao.CustomerDAO;
import com.xenosgrilda.spring.app.models.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerDAO customerDAO;

    @RequestMapping("/list")
    public String listCustomers(Model model){

        // Getting customers from the DAO
        List<Customer> customers = this.customerDAO.getCustomers();

        // Adding the customer to the model
        model.addAttribute("customers", customers);

        return "list-customers";
    }
}

/**
 * In order for the CustomerDAO works in this controller, we need to inject it
 * Note: CustomerDaoImpl is recognized by the Spring container thanks to the @Repository annotation,
 * which is a @Component inherited annotation
 */