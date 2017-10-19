class Review

  @@all = []

  attr_accessor :content, :restaurant, :customer

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


end
