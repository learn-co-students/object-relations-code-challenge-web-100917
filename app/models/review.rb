class Review

attr_accessor :customer, :restaurant, :content
@@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


end



# Build out the following methods on the Review class
#
# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
