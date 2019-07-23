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

  def add_review(resturant, content, rating)
    Review.new(content, resturant, self, rating)
  end 

  def reviews 
    Review.all.select do |rev|
      rev.customer == self 
    end 
  end

  def num_reviews
    reviews.size
  end 

  def restaurants
    arr = []
    reviews.each do |rev|
      if !arr.include?(rev.restaurant)
        arr << rev.restaurant
      end 
    end 
    arr
  end 

  def self.find_by_name(full_name)
   name = full_name.split(" ")

    Customer.all.find do |cust|
       cust.first_name == name[0] && cust.last_name == name[1]
    end 
  end 

  def self.find_all_by_first_name(name)
    Customer.all.select do |cust|
      cust.first_name == name 
    end 
  end 

  def self.all_names 
    all_names = []
    Customer.all.each do |cust|
      name = "#{cust.first_name} #{cust.last_name}"
      all_names << name 
    end 
    all_names 
  end 

end
