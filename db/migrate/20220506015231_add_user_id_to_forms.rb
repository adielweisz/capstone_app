class AddUserIdToForms < ActiveRecord::Migration[7.0]
  def change
    add_column :forms, :user_id, :integer
  end
end
