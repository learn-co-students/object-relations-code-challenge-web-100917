# Please copy/paste all three classes into this file to submit your solution!
class Customer

  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    split = full_name.split(" ")
    self.all.find { |customer| customer.first_name == split[0] && customer.last_name == split[1]}
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map { |customer| customer.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    self.reviews.map { |review| review.restaurant}.uniq
  end
end

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

class Review
  attr_accessor :content, :restaurant, :customer
  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
