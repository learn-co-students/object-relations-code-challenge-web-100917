class Review

  @@all = []

  def self.all
    @@all
  end

  attr_reader :customer, :restaurant
  attr_accessor :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

end




# 
# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
