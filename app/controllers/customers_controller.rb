class CustomersController < ApplicationController
    def new
        @customer=Customer.new
    end
    def create
        customer = Customer.create(customer_params)
        redirect_to invoices_path
    end
    def customer_params
        params.require(:customer).permit(:company_name,:organization_number,:address,:postcode,:city)
    end
end
