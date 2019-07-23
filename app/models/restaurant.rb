class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

# Restaurant.all
# returns an array of all restaurants
  def self.all 
    @all
  end


# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    Customer.all.select {|customer| customer.restauraunt == self }
  end
# Restaurant#reviews
# returns an array of all reviews for that restaurant
  def reviews
    Revews.all.select {|review| review.restaurant == self }
  end
# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    total_score = 0
    for i in reviews
      total_score += i.rating
    end
  average = total_score / reivews.length
  end
# Restaurant#longest_review
# returns the longest review content for a given restaurant
  def find_content
    #use find_content to list all the reviews for a rest
  end

  def longest_review
    #use longest review to count the length of the reviews by character and then return the longest review
  end
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end
end
