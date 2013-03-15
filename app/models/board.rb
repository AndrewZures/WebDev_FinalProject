class Board < ActiveRecord::Base
  attr_accessible :category, :name, :pin_id, :user_id

  validates_presence_of :user_id

  belongs_to :user
  has_many :board_pins
  has_many :pins, :through => :board_pins




  #board generator methods for board testing purposes

  def create_kitten_board 
    self.name = "Kittens"
    self.save
    20.times do 
      height = randomNumber
      width = randomNumber
    self.pins.create :user_id => self.user_id, :url => "http://placekitten.com/g/#{height}/#{width}"
    end
  end

  def create_cage_board
     self.name = "Nick Cage!"
     self.save

     20.times do 
      height = randomNumber
      width = randomNumber
      self.pins.create :user_id => self.id, :url => "http://placecage.com/g/#{height}/#{width}"
    end
  end

  def randomNumber
    rand(200..400).to_i
  end

end
