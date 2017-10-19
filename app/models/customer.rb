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

#should return all of the customers
  def self.all
    @@all
  end

#given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

#Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

def self.find_all_by_first_name(name)
  self.all.select do |customer|
    customer.first_name == name
  end
end

#Customer.all_names
#should return an array of all of the customer full names
def self.all_names
  @@all.collect do |customer|
    customer.full_name
  end
end

#Customer#add_review(restaurant, content)
#given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
def add_review(restaurant, content)
  #restaurant initializes with (review, customer, restaurant)
  Review.new(content, self, restaurant)
end


end
