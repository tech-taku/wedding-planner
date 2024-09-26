class AddLatitudeAndLongitudeToService < ActiveRecord::Migration[7.2]
  def change
    add_column :services, :latitude, :float
    add_column :services, :longitude, :float
  end
end
