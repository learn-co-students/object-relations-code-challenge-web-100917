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
