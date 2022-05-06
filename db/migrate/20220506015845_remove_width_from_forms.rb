class RemoveWidthFromForms < ActiveRecord::Migration[7.0]
  def change
    remove_column :forms, :width, :integer
  end
end
