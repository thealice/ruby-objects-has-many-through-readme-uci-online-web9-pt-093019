class Meal
  attr_reader :waiter, :customer, :total, :tip
  @@all = []

  def self.all
    @@all
  end
end
