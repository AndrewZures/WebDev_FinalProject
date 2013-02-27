class User < ActiveRecord::Base
  attr_accessible :about, :email, :fname, :image, :lname, :location, :username

  has_many :boards
end
