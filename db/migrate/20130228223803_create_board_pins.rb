class CreateBoardPins < ActiveRecord::Migration
  def change
    create_table :board_pins do |t|

      t.timestamps
    end
  end
end
