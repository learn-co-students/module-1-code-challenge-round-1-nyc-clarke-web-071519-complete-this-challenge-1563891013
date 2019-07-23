class Restaurant

  attr_accessor :review , :content, :rating
  attr_reader :name
  
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Customers.all.select { |reviews| review.restaurant == self}.uniq
  end

  def reviews
    customers.map {|reviews| review.restaurant}
  end

  def average_star_rating
    avg_rating = Reviews.all.map {|revuew| review.avg_rating}
    avg_rating_totals.reduce(0){|result, n| result + n} / avg_rating_totals.length.to_f
  
  end

    def lomgest_review
      reviews.length
    end

    def self.find_by_name(name)
      self.all.find {|names| names.restaurant == self}

    end


end
