"use strict";

// DOM Variables
const customers = document.querySelectorAll('.customer');
const modal = document.querySelector('.modal');
const modalCloseBtn = modal.querySelector('.modal-close-btn');
const modalCancelBtn = modal.querySelector('#modal-cancel-btn');
const initialDeleteUrl = document.querySelector('#anchor-id').href;

// Event Listeners
customers.forEach(customer => {
    customer.querySelector('.btn-dropdown').addEventListener('click', () => {
        const customerBody = customer.querySelector('.customer-body');

        if(customerBody.style.maxHeight){
            customerBody.style.maxHeight = null;
        }else{
            customerBody.style.maxHeight = '100px';
        }
    });

    customer.querySelector('.btn-delete').addEventListener('click', modalClickHandler)
});

modalCancelBtn.addEventListener('click', modalClickHandler);
modalCloseBtn.addEventListener('click', modalClickHandler);
modal.addEventListener('click', modalClickHandler);


// Functions
function modalClickHandler(){
    const target = event.target;
    const curTarget = event.currentTarget;
    const id = curTarget.dataset.id;

    // Checking for a click in: btn-delete, close, outside, and cancel
    if(curTarget.classList.contains('btn-delete') || target === modalCloseBtn || target === modal || target === modalCancelBtn){
        if(modal.style.display === '' || modal.style.display === 'none'){
            modal.style.display = 'block';
            modal.style.opacity = '1';

            document.querySelector('#anchor-id').href += `?customerId=${id}`;
        }else{
            let opacity = 1;

            const timer = setInterval(() => {
                if(opacity <= 0.1){
                    clearInterval(timer);
                    modal.style.display = 'none';
                    document.querySelector('#anchor-id').href = initialDeleteUrl;
                }

                modal.style.opacity = opacity;
                opacity -= opacity * 0.1;
            }, 20);
        }
    }

    event.stopPropagation();
}