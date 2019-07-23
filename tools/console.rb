require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

aj = Customer.new("AJ", "Marchitelli")
joe = Customer.new("Joe", "Shmoe")

mcdonalds = Restaurant.new("MCD")
burgerking = Restaurant.new("BK")

aj_bk_review = Review.new(burgerking, aj, "Not Great", 3)
joe_mcd_review = Review.new(mcdonalds, joe, "Great", 5)
aj_mcd_review = aj.add_review(mcdonalds, "Yum", 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line