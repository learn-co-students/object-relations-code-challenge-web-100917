# Please copy/paste all three classes into this file to submit your solution!
class Customer

  # Build the following methods on the customer class
  # + Customer.all
  #   + should return all of the customers
  # + Customer.find_by_name(name)
  #   + given a string of a full name, returns the first customer whose full name matches
  #
  #   + should return an array of all of the customer full names
  # + Customer#add_review(restaurant, content)
  #   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

  attr_accessor :first_name, :last_name, :content

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
    first = name.split(" ")[0]
    last = name.split(" ")[1]
    self.all.find {|customer| customer.first_name == first && customer.last_name == last}
  end

  # + Customer.find_all_by_first_name(name)
  #   + given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(first_name)
    self.all.map {|customer| customer.first_name == first_name}
  end

    #  + should return an array of all of the customer full names

    def self.all_names
      self.all.map do |customer|
        "#{customer.first_name}#{customer.last_name}"
      end
    end

    # Customer#add_review(restaurant, content)
    #   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

    def self.add_review(restaurant, content)
      new_review = Review.new(restaurant, content, self)
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

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}

  end

  def reviews
    Review.all.collect do |review|
      review.restaurant == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.customer
    end
  end


end

class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(restaurant, content, customer)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.all.find do |review|
      if review.customer == self
        return review.customer
      end
    end
  end

  def restaurant
    self.all.find do |review|
      if review.restaurant == self
        return review.restaurant
      end
    end
  end

end

a = Review.new("candy", "blah", "lina")
