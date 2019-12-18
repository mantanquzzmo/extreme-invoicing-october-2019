class Customer < ApplicationRecord
  validates_presence_of :name, :address, :city
  validates :organisation_number, length: { is: 11 }
  validates :postcode, length: { is: 5 }
end
