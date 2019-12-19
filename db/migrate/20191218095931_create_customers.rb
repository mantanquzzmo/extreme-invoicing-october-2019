class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :organisation_number
      t.string :address
      t.integer :postcode
      t.string :city

      t.timestamps
    end
  end
end
