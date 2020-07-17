class CreateCorrects < ActiveRecord::Migration[6.0]
  def change
    create_table :corrects do |t|
      t.string :incorrect
      t.integer :question_id

      t.timestamps
    end
  end
end
