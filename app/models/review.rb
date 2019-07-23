class Review

    #customer returns the customer object for that given review Once a review is created, I should not be able to change the author
    #restaurant returns the restaurant object for that given review Once a review is created, I should not be able to change the restaurant
        attr_reader :customer, :restaurant

    #these probably could've been readers too, but just to show I recognize the significance of not being able to change the author/restaurant for the above two methods I'll put this as accessor    
    #content returns the review content, as a string, for a particular review
        attr_accessor :rating, :content

    @@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
      end

      #rating returns the star rating for a restaurant. This should be an integer from 1-5
      #no need to make a separate rating= method 
      #don't know how to make this an integer 1-5 !! :/
      def rating
        @rating
      end

end


