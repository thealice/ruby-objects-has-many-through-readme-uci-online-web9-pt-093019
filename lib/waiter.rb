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

  def new_meal(customer, total, tip)
      Meal.new(self, customer, total, tip)
  end
end