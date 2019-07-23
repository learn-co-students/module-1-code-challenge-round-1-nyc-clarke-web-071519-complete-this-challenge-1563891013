class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end


  def my_reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  #uniq
  def customers
      my_reviews.map do |reviews|
      reviews.customer
      end
  end


  def my_ratings
    my_reviews.map do |reviews|
      reviews.rating
    end
  end

  def my_ratings_num
    my_ratings.map do |ratings|
      ratings.to_f
    end
  end

  def average_star_rating
    my_ratings_num.sum / my_ratings.length
  end

  def my_review_contents
    my_reviews.map do |reviews|
      reviews.content
    end
  end
  
  def longest_review
    array = my_review_contents.sort_by {|word| word.length}
    array.pop
  end
end











#   ----------------DONE--------------------
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant