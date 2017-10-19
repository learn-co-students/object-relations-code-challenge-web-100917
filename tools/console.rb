require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#customers
winter = Customer.new("Winter", "LaMon")
james = Customer.new("James", "Graham")
jordan = Customer.new("Jordan", "Storms")
dakota = Customer.new("Dakota", "Lillie")

#restaurants

shake_shack = Restaurant.new("Shake Shack")
toms_restaurant = Restaurant.new("Tom's Restaurant")
olive_garden = Restaurant.new("Olive Garden")

#reviews
review_1 = Review.new("Yum!", winter, "Shake Shack")
review_2 = Review.new("Amazing pancakes!", jordan, "Tom's Restaurant")
review_3 = Review.new("Only go here for the unlimited breadsticks.", james, "Olive Garden")
review_4 = Review.new("I've died and gone to pancake heaven.", winter, "Tom's Restaurant")
review_5 = Review.new("Best burgers on the east coast!", dakota, "Shake Shack")

Pry.start
