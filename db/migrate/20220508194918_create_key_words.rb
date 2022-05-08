class CreateKeyWords < ActiveRecord::Migration[7.0]
  def change
    create_table :key_words do |t|
      t.string :key_word
      t.integer :key_word_id
      t.integer :product_id

      t.timestamps
    end
  end
end
