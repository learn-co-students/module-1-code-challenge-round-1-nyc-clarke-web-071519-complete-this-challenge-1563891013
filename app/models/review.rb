class Review
    attr_accessor :content, :rating, :customer
    attr_reader :author, :restaurant

    @@all = []
    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
    end

    # Review.all
    # returns all of the reviews
    def self.all
        @all
    end


    # Review#customer
    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author
    def customer
        Customer.all.find {|customer| customer == self.customer}
    end
  
    # Review#restaurant
    # returns the restaurant object for that given review
    # Once a review is created, I should not be able to change the restaurant
    def restaurant
        Restaurant.all.find {|restaurant| restaurant == self.restaurant}
    end

    # Review#rating
    # returns the star rating for a restaurant. This should be an integer from 1-5
    def rating(restaurant)
        Review.all.find {|review| review.restaurant == self.restaurant}
    end
    # Review#content
    # returns the review content, as a string, for a particular review
    def content
    end
end