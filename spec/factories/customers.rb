FactoryBot.define do
  factory :customer do
    name { "MyString" }
    organisation_number { "111111-1111" }
    address { "MyString" }
    postcode { 12345 }
    city { "MyString" }
    user
  end
end
