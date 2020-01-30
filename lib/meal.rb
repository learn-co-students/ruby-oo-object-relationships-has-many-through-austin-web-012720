class Meal

    attr_reader :customer, :tip, :total, :waiter

    @@all = []

    def initialize(waiter, customer, total, tip)
        @customer = customer
        @tip = tip
        @total = total
        @waiter = waiter

        @@all << self
    end

    # Class Method
    def self.all
        @@all
    end
end