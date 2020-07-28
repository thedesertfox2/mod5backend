class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
