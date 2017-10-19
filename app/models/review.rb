class Review

  attr_accessor :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize (customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
