class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.string :answer
      t.integer :question_id

      t.timestamps
    end
  end
end
