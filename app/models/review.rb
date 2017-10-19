class Review

  attr_accessor :content, :customer, :restaurant

  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  #  customer.add_review(restaurant, content)
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

  def self.all
    @@all
  end



end
