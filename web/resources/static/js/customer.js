"use strict";

const customers = document.querySelectorAll('.customer');

customers.forEach(customer => {
    customer.querySelector('.btn-dropdown').addEventListener('click', () => {
        const customerBody = customer.querySelector('.customer-body');

        if(customerBody.style.maxHeight){
            customerBody.style.maxHeight = null;
        }else{
            customerBody.style.maxHeight = '100px';
        }
    })
});