class RemoveHeightFromForms < ActiveRecord::Migration[7.0]
  def change
    remove_column :forms, :height, :integer
  end
end
