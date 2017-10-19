# Please copy/paste all three classes into this file to submit your solution!

class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end
  
end


class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    restaurant_customers = []
    Review.all.each do |review|
      restaurant_customers << review.customer if review.restaurant == self
    end
    restaurant_customers.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

end


class Customer
  attr_accessor :first_name, :last_name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    split_name = name.split(" ")
    self.all.find {|customer| customer.first_name == split_name[0] && customer.last_name == split_name[1]}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    all_names = []
    self.all.each {|customer| all_names << "#{customer.first_name} #{customer.last_name}"}
    all_names
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end
