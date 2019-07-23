class Review
  
    attr_accessor :content , :rating
    attr_reader :customer, restaurant
    @@all = [ ]

    def initialize(customer, restaurant) 
       @customer = customer
       @restaurant = restaurant

        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        puts rating
    end

    def content
        puts content
    end


end

