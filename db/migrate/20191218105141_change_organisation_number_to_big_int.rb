class ChangeOrganisationNumberToBigInt < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :organisation_number, :bigint
  end
end
