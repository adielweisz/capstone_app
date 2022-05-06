class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :question
      t.string :answer
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
