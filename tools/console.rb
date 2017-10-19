require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("homer", "simpson")
customer2 = Customer.new("jon", "snow")
customer3 = Customer.new("bart", "simpson")
customer4 = Customer.new("homer", "that_greek_guy")
customer5 = Customer.new("homer", "a_third_homer")
customer6 = Customer.new("leonardo", "dicaprio")
customer7 = Customer.new("mr.", "rogers")

restaurant1 = Restaurant.new("pomodoro")
restaurant2 = Restaurant.new("pizza hut")
restaurant3 = Restaurant.new("the deli")
restaurant4 = Restaurant.new("subway")

customer1.add_review(restaurant1, "great pizza!")
customer1.add_review(restaurant2, "not as good as pomodoro")
customer1.add_review(restaurant3, "just a regular bodega")
customer2.add_review(restaurant1, "homer was tripping, it sucks")
customer3.add_review(restaurant1, "whats up")
customer1.add_review(restaurant1, "i went again")

Pry.start
