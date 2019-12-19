class ChangeOrganisationNumberToString < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :organisation_number, :string
  end
end
