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
    @@all.detect {|i| i == name}
  end

  def reviews
    self.all.select do |resto|
      resto.restaurant = self
    end
  end

  def customers
    self.reviews.collect do |resto|
      resto.customer
    end
  end
end
