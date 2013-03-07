class Pin < ActiveRecord::Base
  attr_accessible :description, :url, :user_id

  validates_presence_of :url, :user_id

  belongs_to :user

  has_many :pin_comments
  has_many :board_pins
  has_many :boards, :through => :board_pins
end
