class Customer
    attr_reader :age, :name

    @@all = []

    def initialize(name, age)
        @age = age
        @name = name

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Methods
    def meals
        Meal.all.select{|x| x.customer == self}
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def waiters
        # Gets all waiters from the list of customer meals
        self.meals.map{|x| x.waiter}
    end
end