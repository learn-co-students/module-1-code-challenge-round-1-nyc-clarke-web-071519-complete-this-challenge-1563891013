class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews 
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 

  def customers
    array = []
    reviews.each do |review|
      array << review.customer
    end 
    array.uniq
  end 

  def average_star_rating
    total = 0
    num = 0
    reviews.each do |review|
      total += review.rating
      num += 1
    end
    total / num 
  end 

  def longest_review
    reviews.max_by do |review|
      review.content.length 
    end 
  end 

  def self.all
    @@all
  end 

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name.include?(name)
    end 
  end 

end
