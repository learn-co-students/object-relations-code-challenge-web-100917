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
    @@all.find do |names|
      names.name == name
  end
  end

  def reviews
    Review.select do |reviews|
      reviews.restaurant == self
  end
  end

  def customers
      self.reviews.map do |review|
        review.customer
  end
  end

end

-------------
class Review
  attr_accessor :review, :customer, :restaurant
  @@all = []
  def initialize(review, customer, restaurant)
    @review = review
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
      @@all
  end

end
-----------
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

  def self.find_by_name(fullname)
    @@all.find do |name|
      name.full_name == fullname
  end
  end

  def self.find_all_by_first_name(firstname)
    @@all.select do |name|
      name.first_name == firstname
  end
  end

  def add_review(restaurant, content)
    restaurant = Review.restaurant.find_by_name(restaurant)
    Review.new(content, self, restaurant)
  end


end
