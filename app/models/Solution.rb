# Build out the following methods on the restaurant class
#

class Restaurant
  @@all =[]
  attr_accessor :name, :all

  def initialize(name)
    @name = name
    @@all << self
  end
  # + Restaurant.all
  #   + returns an array of all restaurants
  def self.all
    @@all
  end
  # + Restaurant.find_by_name(name)
  #   + given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.select{|restaurant|restaurant.name == name}
  end
  # + Restaurant#reviews
  #   + returns an array of all reviews for that restaurant
  def self.reviews
    Reviews.all.select{|review|review.restaurant == self.name}
  end
  # + Restaurant#customers
  #   + should return all of the customers who have written reviews of that restaurant.
  def self.customers
    self.reviews.map{|review|review.customer}
  end
end

class Customer
  # Build the following methods on the customer class



  attr_accessor :first_name, :last_name,:all,:all_names
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
    # + Customer.all
    #   + should return all of the customers
    @@all
  end
  # + Customer.find_by_name(name)
  #   + given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    # binding.pry
    self.all_names.select{|customer|customer == name}
  end
  # + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select{|customer|self.first_name == name}
  end
  # + Customer.all_names
  #   + should return an array of all of the customer full names
  def self.all_names
    # binding.pry
    @@all.map{|customer|customer.full_name}
  end

  # + Customer#add_review(restaurant, content)
  #   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  def self.add_revies(restaurant,content)
    Review.new(self.full_name,restaurant,content)
  end

end

# Build out the following methods on the restaurant class
#

class Restaurant
  @@all =[]
  attr_accessor :name, :all

  def initialize(name)
    @name = name
    @@all << self
  end
  # + Restaurant.all
  #   + returns an array of all restaurants
  def self.all
    @@all
  end
  # + Restaurant.find_by_name(name)
  #   + given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.select{|restaurant|restaurant.name == name}
  end
  # + Restaurant#reviews
  #   + returns an array of all reviews for that restaurant
  def self.reviews
    Reviews.all.select{|review|review.restaurant == self.name}
  end
  # + Restaurant#customers
  #   + should return all of the customers who have written reviews of that restaurant.
  def self.customers
    self.reviews.map{|review|review.customer}
  end
end


# Build out the following methods on the Review class
#
#
class Review
  @@all = []

  attr_accessor :customer,:restaurant,:review,:all
    def initialize(customer,restaurant,review)
      @customer=customer
      @restaurant = restaurant
      @review = review
      @@all << self
    end

  # + Review.all
  #   + returns all of the reviews
  def self.all
    @@all
  end

  # + Review#customer
  #   + returns the customer for that given review

  def self.customer(name)
    Customer.find_by_name == name
  end
  # + Review#restaurant
  #   + returns the restaurant for that given review
  def self.restaurant(name)
    Restaurant.find_by_name == name
  end

end
