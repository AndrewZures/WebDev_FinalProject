class User < ActiveRecord::Base
  attr_accessible :about, :email, :fname, :image, :lname, :location, :name, :password

  has_secure_password

  validates_presence_of :name
  validates_uniqueness_of :name

  before_save :check_image

  has_many :boards
  has_many :board_pins, :through => :boards

  has_many :friends
  has_many :pins
  has_many :favorites
  has_many :comments
  has_many :follows

  #allow the user to edit everything but the password using the normal edit view
  validates :password, :presence => true, :if => :password_digest_changed?


  #don't allow a malformed image.  instead replace it with a default picture
  def check_image
  	if self.image.blank?
  		self.image = "/assets/dog.jpg"
  	end
  end
  
end
