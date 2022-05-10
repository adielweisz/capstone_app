class RemoveQuestionFromForms < ActiveRecord::Migration[7.0]
  def change
    remove_column  :forms, :question, :string
    
  end
end
