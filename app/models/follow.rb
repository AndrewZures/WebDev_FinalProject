class Follow < ActiveRecord::Base
  attr_accessible :follower_id, :following_id

  validates_presence_of :following_id, :follower_id

  belongs_to :user
end
