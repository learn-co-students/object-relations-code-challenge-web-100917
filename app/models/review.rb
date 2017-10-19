# Build out the following methods on the Review class
#
# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review

class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(restaurant, content, customer)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.all.find do |review|
      if review.customer == self
        return review.customer
      end
    end
  end

  def restaurant
    self.all.find do |review|
      if review.restaurant == self
        return review.restaurant 
      end
    end
  end

end

a = Review.new("candy", "blah", "lina")
