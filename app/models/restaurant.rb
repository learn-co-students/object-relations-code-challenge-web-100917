class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    restaurant_customers = []
    Review.all.each do |review|
      restaurant_customers << review.customer if review.restaurant == self
    end
    restaurant_customers.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

end
