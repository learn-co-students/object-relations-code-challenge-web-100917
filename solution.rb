# Please copy/paste all three classes into this file to submit your solution!

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

  def self.find_by_name(w_name)
    #I know this wouldn't really work with long names or Jr., III, etc., but for the purpose of this lab, I think it's fine
    whole_name = w_name.split(" ")
    f_name = whole_name[0]
    l_name = whole_name[1]
    @@all.find do |x|
      if x.first_name == f_name && x.last_name == l_name
        return x
      end
    end
  end

  def self.find_all_by_first_name(f_name)
    all_by_first_names = []
    @@all.collect do |x|
      if x.first_name == f_name
        all_by_first_names << x
      end
    end
    all_by_first_names
  end

  def self.all_names
    all_names = []
    @@all.each do |x|
      f_name = x.first_name
      l_name = x.last_name
      all_names << (f_name + " " + l_name)
    end
    all_names
  end

  def add_review(rest, content)
    new_restaurant = Restaur
    new_review = Review.new(self, rest, content)
    new_review.customer = self
    new_review.restaurant = rest
    new_review
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

  def self.find_by_name(nombre)
    @@all.find do |n|
      if n.name == nombre
         n
      end
    end
  end

  def reviews
    all_reviews = []
    Review.all.each do |rev|
      if rev.restaurant == self.name
        all_reviews << rev
      end
    end
    all_reviews
  end

  def customers
    all_customers = []
    restaurant.reviews.each do |rev|
      all_customers << rev.customer
    end
    all_customers
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

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end
