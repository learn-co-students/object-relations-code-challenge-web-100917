class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def self.find_by_name(name)
    self.all.detect {|place| place.name = name}
  end

  def self.all
    @@all
  end

  def reviews
    self.Review.collect
  end









  end

end
