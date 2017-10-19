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

Pry.start
