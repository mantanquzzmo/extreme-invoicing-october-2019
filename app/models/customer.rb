class Customer < ApplicationRecord
  validates_presence_of :name, :organisation_number, :address, :postcode, :city
end
