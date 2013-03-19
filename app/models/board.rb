class Board < ActiveRecord::Base
  attr_accessible :category, :name, :pin_id, :user_id, :fav, :foll

  validates_presence_of :user_id

  belongs_to :user
  has_many :board_pins
  has_many :pins, :through => :board_pins

  #allows for polymorphic comments
  has_many :comments, :as => :commentable

  has_many :follows


  
  #--------------------------BELOW--------------------------------#
  #-------board generator methods for board testing purposes------#


  #create a sample board of twenty pictures of Kittens
  def create_kitten_board 
    self.name = "Kittens"
    self.save

    #generate random pictures via random height and width
    20.times do 
      height = randomNumber
      width = randomNumber
    self.pins.create :user_id => self.user_id, :url => "http://placekitten.com/g/#{height}/#{width}"
    end

  end

  #create a sample board of twenty pictures of Nicholas Cage
  def create_cage_board
     self.name = "Nick Cage!"
     self.save

     20.times do 
      height = randomNumber
      width = randomNumber
      self.pins.create :user_id => self.id, :url => "http://placecage.com/g/#{height}/#{width}"
    end
  end

  #random number generator for creating random pictures in pre-defined boards
  def randomNumber
    rand(200..400).to_i
  end

end
