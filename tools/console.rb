require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
restaurant = Restaurant.new("rodeio")
restaurant1 = Restaurant.new("brazero")
restaurant2 = Restaurant.new("fogo")
customer = Customer.new("fabiano","cunha")
customer1 = Customer.new("micheline","carvalho")
customer2 = Customer.new("nicholas","cunha")
customer.add_reviews("rodeio","cozy")
customer1.add_reviews("brazero","bad closed")
customer2.add_reviews("fogo","love")
customer.add_reviews("fogo","very good")


Pry.start
