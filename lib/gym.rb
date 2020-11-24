class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all #Get a list of all gyms  
    @@all
  end 


  def memberships #PASSED: Get a list of all memberships at a specific gym (ex: all Golds Gym memberships)
      Membership.all.select do | membership|    
      membership.gym == self                                   
    end 
  end

  def all_lifters # PASSED: Get a list of all the lifters that have a membership to a specific gym (ex: all lifters with membership at Golds )
      self.memberships.map do | member|
      member.lifter 
  end
end

  def all_names # PASSED: Get a list of the names of all lifters that have a membership to THAT gym
    lifters = self.all_lifters.each do | member |
      member.name 
    end
    lifters.map do | lifter |
    lifter.name
  end
end 


  def combined_lifts  # PASSED: Get the combined lift total of EVERY lifter that has a membership to THAT gym
    total = 0 
    self.all_lifters.each do | lifter |
      total += lifter.lift_total
    end
    total 
  end 
  
end 
