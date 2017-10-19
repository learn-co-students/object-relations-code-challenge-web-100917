class Restaurant

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |rest| rest.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer}.uniq
  end

end
