package com.xenosgrilda.spring.app.controllers;

import com.xenosgrilda.spring.app.models.Customer;
import com.xenosgrilda.spring.app.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    @GetMapping("/list")
    public String listCustomers(Model model){

        // Getting customers from the Service
        List<Customer> customers = this.customerService.getCustomers();

        // Adding the customer to the model
        model.addAttribute("customers", customers);

        return "customers/list-customers";
    }

    @GetMapping("/add-customer-form")
    public String addCustomerForm(Model model){

        // Creating model attribute to bind form data
        Customer customer = new Customer();

        model.addAttribute(customer);

        return "customers/add-customer-form";
    }

    @PostMapping("add-customer")
    public String addCustomer(@ModelAttribute("customer") Customer customer){

        if (customer != null){
            this.customerService.saveCustomer(customer);
        }

        return "redirect:/customer/list";
    }
}

/**
 * In order for the CustomerService works in this controllers, we need to inject it, remembering that Spring have it on the IoC container so we can use @Autowired
 * Note: CustomerDaoImpl is recognized by the Spring container thanks to the @Repository annotation,
 * which is a @Component inherited annotation
 *
 * @ModelAttribute : We can use this annotation to pass the model attribute that we're receiving from the form as a parameter
 */