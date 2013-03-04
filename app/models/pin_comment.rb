class PinComment < ActiveRecord::Base
  attr_accessible :comment, :pin_id, :user_id

  belongs_to :pin
  belongs_to :user
end
