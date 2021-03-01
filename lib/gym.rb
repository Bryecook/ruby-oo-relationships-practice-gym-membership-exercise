class Gym
  attr_reader :name
  @@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|object| self==object.gym}
  end

  def lifters
    # array=[]
    # self.memberships.each do |object|
    #   array << object.member
    # end
    # array
    self.memberships.map {|object|object.member}
  end

  def lifter_names
    self.lifters.map {|object| object.name}
  end

  def lifters_total
  array=self.lifters.map {|object| object.lift_total}
  array.sum
  end
end




puts "gym file ran"