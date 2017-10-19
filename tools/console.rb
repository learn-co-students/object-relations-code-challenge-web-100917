require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

one = Customer.new("lina", "rudashevski")
two = Customer.new("michelle", "ru")
Pry.start
