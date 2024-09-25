class AddProvinceToService < ActiveRecord::Migration[7.2]
  def change
    add_column :services, :province, :string
  end
end
