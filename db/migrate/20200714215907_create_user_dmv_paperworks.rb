class CreateUserDmvPaperworks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_dmv_paperworks do |t|
      t.integer :user_id
      t.integer :dmv_paperwork_id

      t.timestamps
    end
  end
end
