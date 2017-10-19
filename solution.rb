# Please copy/paste all three classes into this file to submit your solution!

class Customer
  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.find_by_name(fullname)
    @@all.find{|cust| cust.full_name == fullname}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|cust| cust.first_name == name}
  end

  def self.all_names
    @@all.map{|cust| cust.full_name}
  end

  def add_review(restaurant, content)
    review = Review.new(restaurant, self, content)
  end

  def reviews
    Review.all.select{|rev| rev.customer == self}
  end

  def restaurants
    self.reviews.map {|rev| rev.restaurant}
  end

end


class Review

  @@all = []

  attr_accessor :content, :restaurant, :customer

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
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
    @@all.find{|rest| rest.name == name}
  end

  def customers
    self.reviews.map {|rev| rev.customer }
  end

  def competitors
    comp = self.customers.map{|cust| cust.restaurants}.flatten.uniq
    comp.delete_if {|rest| rest == self }
  end

  def reviews
    Review.all.select{|rev| rev.restaurant == self}
  end

end
