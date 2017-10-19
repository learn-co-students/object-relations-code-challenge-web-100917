class Restaurant
  attr_accessor :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.find_all {|review| review.restaurant == self.name}
  end

  def customers
    self.reviews.map  {|review| Customer.find_by_name(review.customer)}
  end

end



# + Restaurant.all - DONE
#   + returns an array of all restaurants - DONE
# + Restaurant.find_by_name(name) - DONE
#   + given a string of restaurant name, returns the first restaurant that matches - DONE
# + Restaurant#reviews - DONE
#   + returns an array of all reviews for that restaurant - DONE
# + Restaurant#customers - DONE
#   + should return all of the customers who have written reviews of that restaurant.- DONE
