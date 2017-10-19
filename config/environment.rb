require 'bundler/setup'
Bundler.require
require_all 'app'

matt = Customer.new("mats", "hummels")
jimbo = Customer.new("james", "rodriguez")
matino = Customer.new("mats", "matino")


ay = Restaurant.new("ayylmaoo")
peqas = Restaurant.new("peqas platz")

Customer.find_by_name("mats hummels").add_review(Restaurant.find_by_name("ayylmaoo"), "stop dancing, its a revolution")

matino.add_review(ay, "mmm dat food so good boiiii")
