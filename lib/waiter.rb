class Waiter
  attr_reader :name, :yrs_experience
  @@all = []

  def initialize(name, exp)
    @name = name
    @yrs_experience = exp
    @@all << self
  end

  def self.all
    @@all
  end
end