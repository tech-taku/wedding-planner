class AddAddressColumnsToService < ActiveRecord::Migration[7.2]
  def change
    add_column :services, :address_1, :string
    add_column :services, :address_2, :string
  end
end
