class RemoveProductIdFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :product_id, :integer
    remove_column :products, :key_word, :string

  end
end
