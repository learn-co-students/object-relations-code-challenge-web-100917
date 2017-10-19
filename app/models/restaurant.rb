class Restaurant
  attr_accessor :name, :reviews
  @@restaurants =[]
  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name name
    @@restaurants.find{|restaurant| restaurant.name == name}.name
  end

  def reviews
    Review.all.select{|review| review.content if review.restaurant == self}.content
  end

  def customers
    Review.all.map{|review| review.customer}.uniq
  end
end
