class RemoveAnswerFromForms < ActiveRecord::Migration[7.0]
  def change  
 add_column :forms, :name, :string
 remove_column :forms, :answer, :string
    remove_column  :forms, :user_id, :integer
  end
end
