class AddFormIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :form_id, :integer
    add_column :products, :media, :string
  end
end
