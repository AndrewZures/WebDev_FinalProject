class Friend < ActiveRecord::Base
  attr_accessible :friend_id, :user_id

  validates_presence_of :friend_id, :user_id
  belongs_to :user
end
