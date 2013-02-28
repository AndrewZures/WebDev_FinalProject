class PinComment < ActiveRecord::Base
  attr_accessible :comment, :pin_id, :user_id
end
