class Follow < ActiveRecord::Base
  attr_accessible :board_id, :user_id

  validates_presence_of :board_id, :user_id


  belongs_to :user
  belongs_to :board
  
end
