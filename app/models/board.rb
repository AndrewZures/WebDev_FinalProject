class Board < ActiveRecord::Base
  attr_accessible :category, :name, :pin_id, :user_id

  validates_presence_of :user_id

  belongs_to :user
  has_many :board_pins
  has_many :pins, :through => :board_pins

  def create_kitten_board 
  	self.create :user_id => 1, :name => "kittens"

  	20.times do |pin|
  		height = random (200..500)
  		widgth = random (200..500)
  		self.pins.create :user_id => 1, :url => "http://placekitten.com/#{height}/#{width}"
  	end
  end
end
