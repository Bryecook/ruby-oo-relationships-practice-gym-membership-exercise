class Lifter
  attr_reader :name, :lift_total
  @@all=[]


  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership|self==membership.member}
  end

  def gyms
    array=[]
    Membership.all.each do |membership|
      if self==membership.member
        array << membership.gym
      end
    end
    array
  end

  def self.average_lift_total
    array=[]
    self.all.each do |object|
      array << object.lift_total
    end
    array.sum/array.length
  end

  def total_cost
    array=[]
    Membership.all.each do |object|
      if object.member==self
        array << object.cost
      end 
    end
    array.sum
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end



puts "lifter rile ran"
