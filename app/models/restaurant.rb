class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end
  # Restaurant.all
  # returns an array of all restaurants
  def self.all
    @@all
  end
  # Restaurant.find_by_name(name)
  # given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name == name  }
  end
  # Restaurant#reviews
  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.map do |review|
      if review.restaurant = self
        review.content
      end
    end
  end
  # Restaurant#customers
  # should return all of the customers who have written reviews of that restaurant.
  def customers
    Review.all.map do |review|
      if review.restaurant = self
        review.customer
      end
    end
  end

  def avg_rating
    rating_array = Review.all.map { |review| review.rating  }
    rating_array.inject(0.0) { |sum,el| sum + el } / rating_array.size
  end
end
