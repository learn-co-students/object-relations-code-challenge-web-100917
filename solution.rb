# Please copy/paste all three classes into this file to submit your solution!

class Customer

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|cust| cust.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|cust| cust.first_name == name}
  end

  def self.all_names
    self.all.collect {|cust| cust.full_name}
  end

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end

#############

class Review

  @@all = []

  def self.all
    @@all
  end

  attr_reader :customer, :restaurant
  attr_accessor :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

end

#############

class Restaurant

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|rest| rest.name == name}
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.collect {|rev| rev.customer}
  end

end
