require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

roccos = Restaurant.new("Roccos")
bad_saint = Restaurant.new("Bad Saint")
rose_luxuary =  Restaurant.new("Rose Luxuary")

ryan_mascolo = Customer.new("Ryan", "Mascolo")
katie_drury = Customer.new("Katie", "Drury")
tom_marro = Customer.new("Tom", "Marro")

ryan_mascolo.add_review("Bad Saint", "Good")
ryan_mascolo.add_review("Rose Luxuary", "Good")
ryan_mascolo.add_review("Roccos", "Bad")

puts bad_saint.reviews

Pry.start
