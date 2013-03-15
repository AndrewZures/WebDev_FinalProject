class BoardPin < ActiveRecord::Base
  attr_accessible :board_id, :description, :pin_id

  belongs_to :board
  belongs_to :pin
  has_many :favorites

  validates_presence_of :board_id, :pin_id

end
