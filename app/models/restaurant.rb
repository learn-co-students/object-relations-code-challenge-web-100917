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
    self.all.select { |obj| obj.name == name }
  end

  def reviews
    Review.all.select do  |obj|
      obj.restaurant == self.name
    end
  end

  def customers
    self.reviews.map { |obj| obj.customer}
  end


end
