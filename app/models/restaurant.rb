class Restaurant

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|rest| rest.name == name}
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.collect {|rev| rev.customer}
  end

end




# Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.
