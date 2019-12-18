# frozen_string_literal: true

class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create(customer_params)

    if customer.persisted?
      redirect_to invoices_path, notice: 'Customer was succesfully added.'
    else
      redirect_to request.referer, notice: 'Please fill in the form correctly.'
      end
  end

  def customer_params
    params.require(:customer).permit(:name, :organisation_number, :address, :postcode, :city)
  end
end
