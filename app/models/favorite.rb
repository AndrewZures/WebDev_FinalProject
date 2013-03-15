class Favorite < ActiveRecord::Base
  attr_accessible :board_pin_id, :user_id

  belongs_to :user
  belongs_to :board_pin
end
