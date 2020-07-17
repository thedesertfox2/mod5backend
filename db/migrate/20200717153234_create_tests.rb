class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.integer :number_of_questions
      t.integer :number_of_correct
      t.integer :user_id

      t.timestamps
    end
  end
end
