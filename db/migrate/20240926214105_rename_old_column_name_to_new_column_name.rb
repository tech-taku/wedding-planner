class RenameOldColumnNameToNewColumnName < ActiveRecord::Migration[7.2]
  def change
    rename_column :services, :province, :state
  end
end
