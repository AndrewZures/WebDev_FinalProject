class Board < ActiveRecord::Base
  attr_accessible :category, :name, :pin_id, :user_id

  validates_presence_of :user_id

  belongs_to :user
  has_many :board_pins
  has_many :pins, :through => :board_pins
end
