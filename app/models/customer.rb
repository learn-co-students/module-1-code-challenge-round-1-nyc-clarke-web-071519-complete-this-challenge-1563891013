class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

#add_review(restaurant, content, rating) given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

#num_reviews Returns the total number of reviews that a customer has authored
# don't think this needs to_f or to_i 
  def num_reviews
    customer_reviews = Review.all.select {|review| review.customer == self}
    customer_reviews.length
  end

#restaurants Returns a unique array of all restaurants a customer has reviewed
#probably should've created some sort of helper method instead of rewriting this variable with a different name
  def restaurants
    customer_reviews_array = Review.all.select {|review| review.customer == self}
    customer_reviews_array.uniq
  end

  #.find_all_by_first_name(name) given a string of a first name, returns an array containing all customers with that first name
def self.find_all_by_first_name(name)
  self.all.select {|customer| customer.first_name == name}
end

#.find_by_name(name) given a string of a full name, returns the first customer whose full name matches
# can I call on full_name here?!
def self.find_by_name(name)
  self.all.find {|customer| customer.full_name == name}
end

#.all_names should return an array of all of the customer full names
#didn't get to finish this re: time constraints
def self.all_names
end

end


