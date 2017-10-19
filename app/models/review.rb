class Review
  attr_accessor :customer, :restaurant, :content
  @@reviews = []
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@reviews << self
  end

  def self.all
    @@reviews
  end
end
