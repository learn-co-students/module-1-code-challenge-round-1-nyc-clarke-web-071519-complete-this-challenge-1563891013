class Customer
  

  attr_accessor restaurant , :content, :rating
  attr_reader :first_name, :last_name

  @@all = [ ]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

  def self.all
    @@all
  end


  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    num_reviews = num_reviews.length
  end

  def restaurants
    Customer.all.map { |restaurant| restaurant.review }.uniq
  end


  def self.find_by_name(full_name)
    self.all.find {|name|name.customer == full_name }
  end

  def self.find_all_by_first_name(first_name)
    self.all.find {|name| name.customer == first_name}
  end

  def self.all_names
    self.all.map {|customer_names| customer_names.full_name }
 end

end


