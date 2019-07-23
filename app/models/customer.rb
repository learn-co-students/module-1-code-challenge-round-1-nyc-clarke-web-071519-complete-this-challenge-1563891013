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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  
  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  
  def num_reviews
    my_reviews.length
  end
  
  #   - Returns a **unique** array of all restaurants a customer has reviewed
  
  def restaurants
    my_reviews.map do |reviews|
      reviews.restaurant
    end
  end
  

  def self.find_by_name(full_name)
    Customer.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |customers|
      customers.first_name == first_name
    end
  end

  def self.all_names
    Customer.all.map do |customers|
      customers.full_name 
    end
  end



end







#-----------------DONE-------------------------
#   - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches

# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names