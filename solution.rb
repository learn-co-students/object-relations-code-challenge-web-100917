#Customer
class Customer
  attr_accessor :first_name, :last_name
  attr_reader :all
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    splt = name.split(' ')
    self.all.find do |n|
      n.first_name == splt[0] && n.last_name == splt[1]
    end
  end
end

#Review
class Review
  attr_accessor :customer, :restaurant, :content
  attr_reader :all
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end

#restaurant
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
