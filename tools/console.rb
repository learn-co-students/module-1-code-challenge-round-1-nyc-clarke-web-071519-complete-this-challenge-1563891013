require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new('hyo', 'lee')
customer2 = Customer.new('jun', 'son')


restaurant1 = Restaurant.new('restaurant_hyo1')
restaurant2 = Restaurant.new('restaurant2')

review1 = Review.new('review1', customer1, restaurant1, 3, 'good')
review2 = Review.new('review2', customer2, restaurant2, 5, 'excellent')
review3 = Review.new('review3', customer1, restaurant2, 4, 'very good')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line