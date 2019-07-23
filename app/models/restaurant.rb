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

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self 
    end 
  end 

  def customers
    arr = []
    reviews.map do |rev|
      if !arr.include?(rev.customer)
        arr << rev.customer
      end 
    end
    arr
  end 

  def average_star_rating
    total = 0
    added = 0
    reviews.each do |rev|
      total += 1
      added += rev.rating 
    end 
    added / total 
  end 

  def longest_review
    longest = 0 
    reviews.each do |rev|
      if rev.written.length > longest 
        longest = rev.written.length 
      end 
    end 
    reviews.each do |rev|
      if rev.written.length == longest 
        return rev.written
      end 
    end 
  end 

  def self.find_by_name(name)
    Restaurant.all.find do |rest|
      rest.name == name 
    end 
  end 


end
