require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Test Data
# - Restaurants
fuku = Restaurant.new("Momofuku Noodle Bar")
eleven = Restaurant.new("Eleven Madison Park")
luger = Restaurant.new("Peter Luger Steak House")
katz = Restaurant.new("Katz's Delicatessen")
# - Customers
harry = Customer.new("Harry", "Potter")
ron = Customer.new("Ron", "Weasley")
hermione = Customer.new("Hermione", "Granger")
neville = Customer.new("Neville", "Longbottom")
ginny = Customer.new("Ginny", "Weasley")
harry_styles = Customer.new("Harry", "Styles")
# - Reviews
Review.new(fuku, harry, "I love noodles!", 5)
Review.new(luger, harry, "The best steak in NYC!", 4)
Review.new(eleven, ron, "Pretty good, but not worth the price.", 3)
Review.new(luger, ron, "They drastically overcooked my steak!", 1)
Review.new(katz, ron, "Ordering here is so confusing :(", 2)
Review.new(fuku, hermione, "The service here was horrible.", 2)
Review.new(eleven, hermione, "They really know how to create an experience!", 5)
Review.new(luger, hermione, "I really didn't like their fish entrees.", 3)
Review.new(katz, hermione, "One of my favorite places in New York!", 5)
Review.new(eleven, neville, "A perfect 3rd date place.", 4)
Review.new(luger, neville, "A true hidden gem in NYC!", 5)
Review.new(katz, ginny, "The line was really long and there was no AC.", 2)
Review.new(katz, ginny, "I came back and they fixed the AC. The food was much better too!", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line