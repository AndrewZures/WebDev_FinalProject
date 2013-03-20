class BoardPin < ActiveRecord::Base
  attr_accessible :board_id, :description, :pin_id

  before_destroy :check_pin_status

  belongs_to :board
  belongs_to :pin
  has_many :favorites

  validates_presence_of :board_id, :pin_id

  #if original pin no longer connected to any board, delete it
  # otherwise would pins without boards
  def check_pin_status
     pins = BoardPin.where(:pin_id => self.pin_id)
     if pins.count <= 1
       deleted_pin = Pin.find_by_id(self.pin_id)
       deleted_pin.destroy
     end
  end


end
