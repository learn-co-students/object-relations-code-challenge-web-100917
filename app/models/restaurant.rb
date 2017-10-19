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
    @@all.find do |names|
      names.name == name
  end
  end

  def reviews
    Review.select do |reviews|
      reviews.restaurant == self
  end
  end

  def customers
      self.reviews.map do |review|
        review.customer
  end
  end

end
