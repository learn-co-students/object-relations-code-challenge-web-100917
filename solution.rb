# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def self.find_by_name(name)
    @@all.select do |person|
      person.full_name == name
    end.first
  end

  def self.find_all_by_first_name(name)
    @@all.select do |person|
      person.first_name == name
    end
  end

  def self.all_names
    @@all.map do |people|
      people.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
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
    @@all.select do |rest|
      rest.name == name
    end.first
  end

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    self.reviews.map do |rev|
      rev.customer
    end
  end

end

class Review

attr_accessor :customer, :restaurant, :content
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
