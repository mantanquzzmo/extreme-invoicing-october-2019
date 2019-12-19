# frozen_string_literal: true

class CustomersController < ApplicationController
  before_action :authenticate_user!

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

  private

  def customer_params
    params.require(:customer).permit(:name, :organisation_number, :address, :postcode, :city).merge(user_id: current_user.id)
  end
end
