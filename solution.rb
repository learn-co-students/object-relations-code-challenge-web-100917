# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
  @@all =[]
  @@all_firsts = []
  @@all_full_name = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@all_first << self.first_name
  end

  def full_name
    @full_name = "#{first_name} #{last_name}"
    @@all_full_name << self.full_name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.detect {|i| i == @full_name}
  end

  def self.find_all_by_first_name(name)
    self.all.select do |name|
      name.customer = self
    end
  end

  def self.all_names
    @@all_full_name
  end

  def add_review(restaurant, content)
    new_review = Customer.new(content)
    new_review.restaurant = self
  end
end

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

class Review
  attr_accessor :restaurant, :customer
  @@all = []

  def initialize(restaurant, customer)
    @restaurant =restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    review.customer
  end

  def restaurant
    review.restaurant
  end
end
