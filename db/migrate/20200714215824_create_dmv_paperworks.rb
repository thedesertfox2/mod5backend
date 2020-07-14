class CreateDmvPaperworks < ActiveRecord::Migration[6.0]
  def change
    create_table :dmv_paperworks do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
