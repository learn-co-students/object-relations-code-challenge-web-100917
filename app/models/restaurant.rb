# Build out the following methods on the restaurant class
#

class Restaurant
  @@all =[]
  attr_accessor :name, :all

  def initialize(name)
    @name = name
    @@all << self
  end
  # + Restaurant.all
  #   + returns an array of all restaurants
  def self.all
    @@all
  end
  # + Restaurant.find_by_name(name)
  #   + given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.select{|restaurant|restaurant.name == name}
  end
  # + Restaurant#reviews
  #   + returns an array of all reviews for that restaurant
  def self.reviews
    Reviews.all.select{|review|review.restaurant == self.name}
  end
  # + Restaurant#customers
  #   + should return all of the customers who have written reviews of that restaurant.
  def self.customers
    self.reviews.map{|review|review.customer}
  end
end
