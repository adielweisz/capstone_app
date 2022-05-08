class RemoveKeyWordIdFromKeyWords < ActiveRecord::Migration[7.0]
  def change
    remove_column :key_words, :key_word_id, :integer
  end
end
