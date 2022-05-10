class CreateUsersAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :users_answers do |t|
          t.integer :question_id
          t.integer :user_id
          t.integer :answer_id
          
    
          t.timestamps
    end
  end
end
