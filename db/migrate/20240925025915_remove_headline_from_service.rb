class RemoveHeadlineFromService < ActiveRecord::Migration[7.2]
  def change
    remove_column :services, :headline, :string
  end
end
