class User < ActiveRecord::Base
  attr_accessible :about, :email, :fname, :image, :lname, :location, :name, :password

  has_secure_password

  validates_presence_of :name
  validates_uniqueness_of :name

  before_save :check_image

  has_many :board_pins, :through => :boards
  has_many :friends
  has_many :boards
  has_many :pins


  validates :password, :presence => true, :if => :password_digest_changed?

  def check_image
  	if self.image.blank?
  		self.image = "/assets/dog.jpg"
  	end
  end
  
end
