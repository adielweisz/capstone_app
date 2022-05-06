class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :department
      t.string :catagory
      t.string :available_at
      t.string :sub_catagory
      t.string :key_word
      t.string :description
      t.integer :tutorial_id
      t.integer :product_id

      t.timestamps
    end
  end
end
