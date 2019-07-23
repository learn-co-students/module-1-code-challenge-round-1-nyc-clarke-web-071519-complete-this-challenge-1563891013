require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Jason", "Shockness")
cust2 = Customer.new("Max", "Senat")
cust3 = Customer.new("DJ", "Joseph")

rest1 = Restaurant.new("Vincent's")
rest2 = Restaurant.new("Footprints")
rest3 = Restaurant.new("Woodlands")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line