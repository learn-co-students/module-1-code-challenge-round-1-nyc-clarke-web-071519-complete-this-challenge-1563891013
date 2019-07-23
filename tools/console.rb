require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Andrew", "Tack")
customer2 = Customer.new("Kevin", "Lloyd")
customer3 = Customer.new("Daniel", "Solomon")
customer4 = Customer.new("John", "Doe")
customer5 = Customer.new("Bob", "Johnson")

restaurant1 = Restaurant.new("Dellos")
restaurant2 = Restaurant.new("Pub")
restaurant3 = Restaurant.new("Buki")
restaurant4 = Restaurant.new("Donalds")
restaurant5 = Restaurant.new("BK")

review1 = Review.new(customer1, restaurant2, "It was good", 4)
review2 = Review.new(customer2, restaurant1, "It was really good", 4)
review3 = Review.new(customer3, restaurant3, "It was not that good", 3)
review4 = Review.new(customer1, restaurant4, "Awful", 1)
review5 = Review.new(customer4, restaurant1, "It was one of the best restaurants I've ever been to", 5)
review6 = Review.new(customer5, restaurant5, "It was better than average", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line