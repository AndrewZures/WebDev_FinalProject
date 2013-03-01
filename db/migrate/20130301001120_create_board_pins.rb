class CreateBoardPins < ActiveRecord::Migration
  def change
    create_table :board_pins do |t|
      t.integer :pin_id
      t.integer :board_id
      t.string :description

      t.timestamps
    end
  end
end
