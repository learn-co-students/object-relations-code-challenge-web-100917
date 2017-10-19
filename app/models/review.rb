class Review
  @@all = []
  attr_accessor :review, :customer, :restaurant

  def initialize(review, customer, restaurant)
    @review = review
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

 #Review.all
  #returns all of the reviews
  def self.all
    @@all
  end

end
