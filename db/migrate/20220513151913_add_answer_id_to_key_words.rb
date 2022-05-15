class AddAnswerIdToKeyWords < ActiveRecord::Migration[7.0]
  def change
    add_column :key_words, :answer_id, :integer
  end
end
