class User < ActiveRecord::Base
  attr_accessible :about, :email, :fname, :image, :lname, :location, :name, :password

  has_secure_password

  validates_presence_of :name, :password
  validates_uniqueness_of :name

  before_save :check_image

  has_many :board_pins, :through => :boards
  has_many :friends
  has_many :boards
  has_many :pins

  def check_image
  	if self.image.blank?
  		self.image = "default-user-image.jpg"
  	end
  end
  
end
