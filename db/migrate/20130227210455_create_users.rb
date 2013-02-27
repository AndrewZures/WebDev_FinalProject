class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :email
      t.string :location
      t.string :about
      t.string :image

      t.timestamps
    end
  end
end
