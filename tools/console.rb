require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Varun', 'Kumar')
c2 = Customer.new('Sally', 'Wiggins')
c3 = Customer.new('Dally', 'Parker')

rest1 = Restaurant.new('Applebees')
rest2 = Restaurant.new('McDonalds')
rest3 = Restaurant.new('Burger King')

rev1 =
rev2
rev3

binding.pry
0 #leave this here to ensure binding.pry isn't the last line