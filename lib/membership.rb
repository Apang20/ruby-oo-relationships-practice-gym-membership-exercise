

class Membership #JOINER CLASS

  attr_reader :cost, :gym
  attr_accessor :lifter

  @@all = []

  def initialize(gym, lifter, cost)
    @lifter = lifter 
    @gym = gym
    @cost = cost

    self.class.all << self 
  end

  def self.all  #Get a list of all memberships 
    @@all
  end 

end
