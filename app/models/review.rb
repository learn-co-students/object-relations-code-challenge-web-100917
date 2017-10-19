class Review

  attr_accessor :content, :customer, :restaurant

  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end


end

#
# Build out the following methods on the Review class
#
# + Review.all - DONE
#   + returns all of the reviews - DONE
# + Review#customer - DONE
#   + returns the customer for that given review - DONE
# + Review#restaurant - DONE
#   + returns the restaurant for that given review
