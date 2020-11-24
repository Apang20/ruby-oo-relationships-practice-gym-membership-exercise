# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#All members => gym, but not all members = lifters


#Lifter(name, lift_total)
mochi = Lifter.new("Mochi", 5)
raul = Lifter.new("Raul", 500)
avelon = Lifter.new("Avelon", 50)
arnold = Lifter.new("Arnold", 900)

#Gym(name)
golds = Gym.new("Golds")
lt = Gym.new("LifeTime")
pf = Gym.new("PlanetFit")

#Membership(gym, lifter, cost)
membership1 = Membership.new(golds,mochi,40) 
membership2 = Membership.new(lt,raul,100) 
membership3 = Membership.new(pf,avelon,10) 
membership4 = Membership.new(golds,arnold,10) 
membership5 = Membership.new(golds,avelon,10)  


binding.pry

puts "Gains!"
