class User < ActiveRecord::Base
  attr_accessible :about, :email, :fname, :image, :lname, :location, :name, :password

  has_secure_password

  has_many :boards
  has_many :pins
  
end
