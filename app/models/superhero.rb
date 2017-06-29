class SuperHero

  attr_accessor :name, :bio, :power

  @@all = []

  def initialize(name, bio, power)
    @name = name
    @bio = bio
    @power = power
    @@all << self
  end

  def self.all
    @@all
  end
end
