# Please copy/paste all three classes into this file to submit your solution!

class Review

  attr_accessor :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize (customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end

class Customer

  attr_accessor :first_name, :last_name

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
      self.all.select {|obj| obj.full_name == name}
  end

  def self.find_by_first_name(first_name)
    self.all.select {|obj| obj.first_name == first_name}
  end

  def self.all_names
    self.all.map { |obj| obj.full_name }
  end

  def add_review(restaurant, content)
    Review.new(self.full_name, restaurant, content)
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
