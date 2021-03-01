class Membership
  attr_reader :cost, :gym, :member
  @@all=[]

  def initialize(cost,gym,member)
    @gym=gym
    @member=member
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end


end




puts "membership rile ran"