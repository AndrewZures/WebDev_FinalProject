class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :user_id
      t.integer :pin_id
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
