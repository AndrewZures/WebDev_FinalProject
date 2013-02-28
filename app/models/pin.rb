class Pin < ActiveRecord::Base
  attr_accessible :description, :url, :user_id

  belongs_to :user
  has_many :board_pins
end
