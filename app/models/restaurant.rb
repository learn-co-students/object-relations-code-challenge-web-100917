class Restaurant
  attr_accessor :name
  attr_reader :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find { |rest| rest.name == name }
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |revs|
      revs.restaurant == self
    end
  end

  #should return all of the customers who have written reviews of that restaurant.
  def customers
    self.reviews.map do |revs|
      revs.customer
    end
  end


end
