class CreatePinComments < ActiveRecord::Migration
  def change
    create_table :pin_comments do |t|
      t.integer :user_id
      t.integer :pin_id
      t.string :comment

      t.timestamps
    end
  end
end
