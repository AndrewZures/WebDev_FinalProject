class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :url
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
