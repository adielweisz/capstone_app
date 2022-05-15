class RemoveUserIdFromAnswers < ActiveRecord::Migration[7.0]
  def change

    remove_column :answers, :key_word_id, :integer
    remove_column  :answers, :user_id, :integer
  end
end
