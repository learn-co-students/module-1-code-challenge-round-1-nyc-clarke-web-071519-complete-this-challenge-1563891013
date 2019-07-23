class Customer
  attr_reader :first_name, :last_name
  
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name

    @@all << self
  end

  def self.all
    @@all
  end 

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end 

  def reviews 
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def num_reviews
    reviews.count 
  end 

  def restaurants
    array = []
    reviews.each do |review|
      array << review.restaurant
    end 
    array.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    #.find
    Customer.all.find do |customer|
      customer.full_name.include?(name) 
    end 
  end 

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.full_name.include?(name)
    end 
  end 

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end 
  end 

end
