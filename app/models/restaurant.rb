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

  #Restaurant#reviews returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

   # Restaurant#customers Returns a unique list of all customers who have reviewed a particular restaurant.
   # maybe could've used the above reviews method
 def customers
  reviews_list = Review.all.select {|review| review.restaurant == self}
  customer_list = reviews_list.select {|review| review.customer}
  customer_list.uniq
end

#average_star_rating returns the average star rating for a restaurant based on its reviews
#can't nail this one because I can't set rating properly as an integer
def average_star_rating
  reviews_array = Review.all.select {|review| review.restaurant == self}
  ratings_array = reviews_array.select {|review| review.rating}
  counter = 0
  ratings_array.each do |num|
    counter += num
  end
  average = counter.to_f / ratings_array.length
  return average
end

#longest_review returns the longest review content for a given restaurant
#can't get this one because it's not allowing me to do .length to count the length of the array. think I would've got this one with a few more minutes here at the end
def longest_review
  reviews_array_again = Review.all.select {|review| review.restaurant == self}
  content_array = reviews_array_again.select {|review| review.content}
  longest_holder = content_array[0].length
  content_array.each do |content|
    if content.length > longest_holder
      longest_holder = content
    end
  end
  return longest_holder
end

#.find_by_name(name) given a string of restaurant name, returns the first restaurant that matches
def self.find_by_name(name)
  self.all.find {|restaurant| restaurant.name == name}
end


end






