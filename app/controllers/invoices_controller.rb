class InvoicesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @invoices = Invoice.all
    @customers = Customer.all
  end

  def new
    invoice = Invoice.create(date: Date.today, due_date: Date.today + 30.days, user: current_user)
    redirect_to invoices_path
  end
end
