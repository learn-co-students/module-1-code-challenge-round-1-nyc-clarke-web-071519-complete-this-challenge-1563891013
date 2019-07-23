class Review

    @@all = []
    attr_reader :customer, :restaurant
    attr_accessor :written, :rating
    def initialize(written, restaurant, customer, rating)
        @written = written
        @restaurant = restaurant
        @customer = customer
        @rating = rating

        @@all << self 
    end 

    def self.all
        @@all
    end 


end

