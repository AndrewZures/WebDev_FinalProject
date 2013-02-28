class Follow < ActiveRecord::Base
  attr_accessible :follower_id, :following_id
end
