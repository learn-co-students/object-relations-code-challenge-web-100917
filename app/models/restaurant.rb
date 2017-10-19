class Restaurant #working
  @@all = []
  attr_accessor :name

  def initialize(name) #working
    @name = name
    @@all << self
  end

  def self.all #working
    @@all
  end

  def self.find_by_name(name) #working
    self.all.select {|restaurant| restaurant.name == name}
  end

  def reviews #works
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

end
