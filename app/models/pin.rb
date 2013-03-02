class Pin < ActiveRecord::Base
  attr_accessible :description, :url, :user_id

  validates_presence_of :url, :user_id

  belongs_to :users
  has_many :board_pins
  has_many :boards, :through => :board_pins
end
