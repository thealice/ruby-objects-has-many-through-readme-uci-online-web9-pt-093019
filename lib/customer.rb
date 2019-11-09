class Customer
  attr_reader :name, :age
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
  end
  def save
    @@all << self
  end
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.customer == self}
  end

  def waiters
    meals.select {|meal| meal.waiter}
  end

  def self.all
    @@all
  end

end
