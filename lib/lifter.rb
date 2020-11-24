class Lifter
  attr_reader :name, :lift_total
  attr_accessor :membership

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def self.all #PASSED: Get a list of all lifters
    @@all
  end

  def new_membership (gym, cost) #PASSED: Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(gym, self, cost)
  end 


  def lifter_memberships #PASSED: Get a list of all the memberships that a specific lifter has
    Membership.all.select do |member| 
      member.lifter == self 
    end
  end 

    def all_gyms #PASSED: Get a list of all the gyms that a specific lifter has memberships to
      allGyms = Membership.all.select do |member|
        member.lifter == self 
      end
      allGyms.map do |member| #each doesn't change arr/ map: same length but diff. / 
      member.gym
      end
    end 


  def self.average_lift_total #PASSED: Get the average lift total of all lifters
    total= 0
    total_avg= 0
    self.all.each do |lifter|
      total += (lifter.lift_total).to_f
    end 
    total/ @@all.length 
  end 


    def total_cost #PASSED: Get the total cost of a specific lifter's gym memberships
      total = 0
     lifters = Membership.all.select do | membership|
      membership.lifter == self
     end
     lifters.each do | lifter |
      total += (lifter.cost).to_f
     end
     total 
    end 


end 


    # self.all.each do | lifter |
    #   lifter.name == self 
    #   total += 

      # money = self.all.each do |lifter|
      # lifter.name == self
      # end
      # money.each do | gym |
      #   total += (gym.cost).to_f
      # total += (lifter.gym.cost).to_f
    #   end
    # total
