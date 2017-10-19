
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    Customer.all.select {|customer| fullname == customer.full_name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.find_all {|customer| name == customer.first_name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(content, self.full_name, restaurant)
  end

end

#
# Build the following methods on the customer class
# + Customer.all - DONE
#   + should return all of the customers - DONE
# + Customer.find_by_name(name) - DONE
#   + given a string of a full name, returns the first customer whose full name matches - DONE
# + Customer.find_all_by_first_name(name) - DONE
#   + given a string of a first name, returns an array containing all customers with that first name - DONE
# + Customer.all_names - DONE
#   + should return an array of all of the customer full names - DONE
# + Customer#add_review(restaurant, content) - DONE
#   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
