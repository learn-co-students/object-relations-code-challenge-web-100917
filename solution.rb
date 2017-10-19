# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<<self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #   Customer.all
  # should return all of the customers
  def self.all
    @@all
  end

  # Customer.find_by_name(name)
  # given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end

# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end
# Customer.all_names
# should return an array of all of the customer full names
  def self.all_names
    Customer.all.map { |customer| customer.full_name }
  end
# Customer#add_review(restaurant, content)
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  def add_review(restaurant,content,rating)
    review = Review.new(restaurant, content,rating)
    review.customer = self
  end
end

class Review
    # Review#customer
    # returns the customer for that given review
    # Review#restaurant
    # returns the restaurant for that given review
  attr_accessor :customer, :restaurant, :content, :rating

  @@all = []

  def initialize(restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @@all<<self
    @rating = rating
    self.restaurant=restaurant

  end
  # Review.all
  # returns all of the reviews
  def self.all
    @@all
  end

end

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end
  # Restaurant.all
  # returns an array of all restaurants
  def self.all
    @@all
  end
  # Restaurant.find_by_name(name)
  # given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name == name  }
  end
  # Restaurant#reviews
  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.map do |review|
      if review.restaurant = self
        review.content
      end
    end
  end
  # Restaurant#customers
  # should return all of the customers who have written reviews of that restaurant.
  def customers
    Review.all.map do |review|
      if review.restaurant = self
        review.customer
      end
    end
  end

  def avg_rating
    rating_array = Review.all.map { |review| review.rating  }
    rating_array.inject(0.0) { |sum,el| sum + el } / rating_array.size
  end
end
