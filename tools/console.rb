require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rest1 = Restaurant.new("rest1")
rest2 = Restaurant.new("rest2")

cust1 = Customer.new("first1", "last1")
cust2 = Customer.new("first1", "last1")

rev1 = Review.new("great", rest1, cust1, 5)
rev2 = Review.new("bad", rest1, cust2, 3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line