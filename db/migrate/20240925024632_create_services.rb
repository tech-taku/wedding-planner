class CreateServices < ActiveRecord::Migration[7.2]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.string :headline, null: false
      t.text :description, null: false
      t.string :city, null: false
      t.string :country, null: false

      t.timestamps
    end
  end
end
