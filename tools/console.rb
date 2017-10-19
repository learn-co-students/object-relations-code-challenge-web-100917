require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#TEST VARIABLES
#CUSTOMERS
Mimi = Customer.new("Mimi","Rahman")
Yomi = Customer.new("Yomi","Bear")
JonSnow = Customer.new("Jon","Snow")
JonRain = Customer.new("Jon","Rain")

#RESTAURANTS
ShakeShack = Restaurant.new("ShakeShack")
PizzaHut = Restaurant.new("PizzaHut")

#TESTS
#CUSTOMER TESTS
# Test 1 - creates new Customer which initializes w/ first_name & last_name)

#result = PASS

# Test 2 - Customer.all, should return all of the customers
#result = PASS

# Test 3 - Customer.find_by_name(name), given a string of a full name, returns the first customer whose full name matches
#result = PASS

# TEST 4 - Customer.find_all_by_first_name(name),  given a string of a first name, returns an array containing all customers with that first name
#PASS


# TEST 5 - Customer.all_names PASS
# should return an array of all of the customer full names


# TEST 6 - Customer#add_review(restaurant, content) PASS
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
# Build out the following methods on the Review class

#REVIEW TESTS
# TEST 6 Review.all PASS

# TEST 7 Review#customer PASS
# Returns the customer for that given review

# TEST 8: Review#restaurant - PASS
# returns the restaurant for that given review


#RESTAURANT TESTS
# TEST 1 Restaurant.all - PASS
# TEST 2 Restaurant.find_by_name(name)- PASS
#   given a string of restaurant name, returns the first restaurant that matches
# TEST 3 - Restaurant#reviews - PASS
#   returns an array of all reviews for that restaurant
# TEST 4 - Restaurant#customers - PASS
# should return all of the customers who have written reviews of that restaurant.



Pry.start
