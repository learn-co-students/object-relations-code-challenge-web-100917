require 'bundler/setup'
Bundler.require
require_all 'app'

yassi = Customer.new("Yassi", "Mortensen")
ayis = Customer.new("Ayis", "Megiris")

italian = Restaurant.new("Olive")
greek = Restaurant.new("Souvla")
