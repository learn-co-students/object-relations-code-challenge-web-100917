
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

  def self.find_by_name(fullname)
    Customer.all.select {|customer| fullname == customer.full_name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.find_all {|customer| name == customer.first_name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(content, self.full_name, restaurant)
  end

end




class Review

  attr_accessor :content, :customer, :restaurant

  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end


end




class Restaurant
  attr_accessor :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.find_all {|review| review.restaurant == self.name}
  end

  def customers
    self.reviews.map  {|review| Customer.find_by_name(review.customer)}
  end

end
