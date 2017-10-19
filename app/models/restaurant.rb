# Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}

  end

  def reviews
    Review.all.collect do |review|
      review.restaurant == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.customer
    end
  end


end
