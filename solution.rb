# Please copy/paste all three classes into this file to submit your solution!
class Review
  attr_accessor :customer, :restaurant, :content
  @@reviews = []
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@reviews << self
  end

  def self.all
    @@reviews
  end
end

class Restaurant
  attr_accessor :name, :reviews
  @@restaurants =[]
  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name name
    @@restaurants.find{|restaurant| restaurant.name == name}.name
  end

  def reviews
    Review.all.select{|review| review.content if review.restaurant == self}.content
  end

  def customers
    Review.all.map{|review| review.customer}.uniq
  end
end

class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all_customers = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.find_by_name name
    @@all_customers.find{|customer| "#{customer.first_name} #{customer.last_name}" == name}.full_name
  end

  def self.find_all_by_first_name name
    @@all_customers.select{|customer| customer.first_name == name}
  end

  def self.all_names
    @@all_customers.map{|customer| customer.full_name}
  end

  def add_review restaurant, content
    Review.new(self, restaurant, content)
    restaurant.reviews = self
  end
end
