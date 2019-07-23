class Restaurant
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    find_by_name = name
  end

  def customers
    Review.all.select{|customers| customers}
  end
  
  def reviews
    Reviews.all
  end


end



# Restaurant#customers Returns a unique list of all customers who have reviewed a particular restaurant.
# Restaurant#reviews returns an array of all reviews for that restaurant
# Restaurant#average_star_rating returns the average star rating for a restaurant based on its reviews
# Restaurant#longest_review returns the longest review content for a given restaurant

# ------------------FINISHED---------------------
# Restaurant.find_by_name(name) given a string of restaurant name, returns the first restaurant that matches
