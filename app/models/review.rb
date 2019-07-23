class Review


    #   Review#restaurant
    #   - returns the restaurant object for that given review
    #   - Once a review is created, I should not be able to change the restaurant
    #   Review#customer
    #   - returns the customer object for that given review
    #   - Once a review is created, I should not be able to change the author
    #   Review#content
    #   - returns the review content, as a string, for a particular review
    #   Review#rating
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
    attr_reader :restaurant, :customer, :content, :rating

    @@all = []

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        #   If the review's rating is less than 1, the rating will default to 1
        #   If the review's rating is greater than 5, the rating will default to 5
        #   If the review's rating is a float, the rating will round to the nearest integer
        if rating < 1
            @rating = 1
        elsif rating > 5
            @rating = 5
        else
            @rating = rating.round
        end

        @@all << self
    end 

    #   Review.all returns all of the reviews
    def self.all
        @@all
    end

end

