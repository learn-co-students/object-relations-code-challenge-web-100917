require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

abe = Customer.new("Abe", "Rudy")
pizza = Restaurant.new("Wheated")
test = Review.new(abe, pizza, "Hey there!")

shirley = Customer.new("Shirley", "Lin")
burger = Restaurant.new("Burgers")
test1 = Review.new(shirley, burger, "hello!")

brandon = Customer.new("Brandon", "Harris")
test2 = brandon.add_review(pizza, "AWESOME")

Pry.start
