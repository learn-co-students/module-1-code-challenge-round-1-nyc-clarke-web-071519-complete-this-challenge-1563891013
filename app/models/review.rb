class Review
    attr_reader :customer, :restaurant 
    attr_accessor :name, :rating, :content 

    @@all = []

    def initialize(name, customer, restaurant, rating, content)
        @name = name
        @customer = customer
        @restaurant = restaurant 
        @rating = rating
        @content = content 

        @@all << self 
    end

    def self.all
        @@all 
    end 

  
end

