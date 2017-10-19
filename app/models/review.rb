class Review
  attr_accessor :restaurant, :customer
  @@all = []

  def initialize(restaurant, customer)
    @restaurant =restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    review.customer
  end

  def restaurant
    review.restaurant
  end
end
