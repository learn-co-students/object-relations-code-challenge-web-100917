require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jerry = Customer.new("Jerry", "Seinfield")
george = Customer.new("Jerry", "Lewis")
elaine = Customer.new("Elaine", "Benes")
cosmo = Customer.new("Cosmo", "Kramer")

bobs = Restaurant.new("Bobs Burgers")
fuku = Restaurant.new("Fuku")

review1 = Review.new(jerry, bobs, "Cool")
review2 = Review.new(elaine, fuku, "Yum")

Pry.start
