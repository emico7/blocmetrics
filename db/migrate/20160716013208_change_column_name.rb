class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :registered_applications, :URL, :url
  end
end
