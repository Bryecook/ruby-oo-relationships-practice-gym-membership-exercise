require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'


lifter1=Lifter.new("Cori", 5000)
lifter2=Lifter.new("Triston", 10000)
lifter3=Lifter.new("Brian", 5000)

gym1=Gym.new("Gold's Gym")
gym2=Gym.new("LA Fitness")
gym3=Gym.new("Lifetime")

membership1=Membership.new(15, gym1, lifter2)
membership2=Membership.new(30, gym2, lifter2)
membership3=Membership.new(75, gym3, lifter1)
membership4=Membership.new(75, gym3, lifter3)

binding.pry
0