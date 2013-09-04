class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :friend_id
      t.integer :user_id

      t.timestamps
    end
  end
end
