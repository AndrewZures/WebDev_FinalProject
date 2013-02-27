class Board < ActiveRecord::Base
  attr_accessible :category, :name, :pin_id, :user_id

  belongs_to :user
  has_many :pins
end
