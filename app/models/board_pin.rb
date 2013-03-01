class BoardPin < ActiveRecord::Base
  attr_accessible :board_id, :description, :pin_id

  belongs_to :board
  belongs_to :pin
  validates_presence_of :board_id, :pin_id

end
