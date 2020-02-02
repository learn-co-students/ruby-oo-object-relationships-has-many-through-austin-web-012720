class Waiter
  attr_accessor :name, :experience

  @@all = []

  def initialize(name, experience)
    @name = name
    @experience = experience

    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select { |meal| meal.waiter == self }
  end

  def customers
    self.meals.map { |meal| meal.customer }
  end

  def best_tipper
    self.meals.max_by { |meal| meal.tip }.customer
  end

end
