class Waiter
    attr_reader :name, :years_experience

    @@all = []

    def initialize(name, years)
        @name = name
        @years_experience = years

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Methods
    def best_tipper
        # Get the largest tip amount
        max_tip = Meal.all.map{|x| x.tip}.max
        # Find the with the larget tip
        meal = max_tip[0]

        # Finally return the customer who tipped the most
        meal.customer
    end

    def meals
        Meal.all.select{|x| x.waiter == self}
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end
end