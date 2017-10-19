require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gary = Customer.new("Gary", "Whitta")
sheena = Customer.new("Sheena", "Easton")
moleman = Customer.new("Hans", "Moleman")
punkrock = Customer.new("Sheena", "Punkrocker")

applebees = Restaurant.new("Applebees")
bao = Restaurant.new("The Bao")
jebon = Restaurant.new("Jebon Sushi")

jebonreview = Review.new("It's great!", "Gary Whitta", "Jebon Sushi")
applebeesreview = Review.new("Sucks!", "Sheena Easton", "Applebees")
applebeesreview2 = Review.new("Well I liked it!", "Hans Moleman", "Applebees")

Pry.start
