# frozen_string_literal: true

Given('the following user(s) exist') do |table|
  table.hashes.each do |user_attrs|
    create(:user, user_attrs)
  end
end

Given('I am logged in as {string}') do |email|
  @user = User.find_by(email: email) || create(:user, email: email, password: 'password')
  login_as @user
end

Given("the following company exist") do |table|
  table.hashes.each do |company_attrs|
    user = User.find_by(email: company_attrs[:user]) || create(:user, email: company_attrs[:user])

    create(:company, company_attrs.except!(:user).merge(user: user))
  end
end

Given('the following customer(s) exist') do |table|
  table.hashes.each do |customer_attrs|
    user = User.find_by(email: customer_attrs['user'])
    customer_attrs.except('user')
    create(:customer, customer_attrs.merge(user: user))
  end
end

Given("an invoice has been created") do
  invoice = Invoice.create(date: Date.today, due_date: Date.today + 30.days, user: @user)
end