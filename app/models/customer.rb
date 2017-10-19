class Customer
  # Build the following methods on the customer class
  attr_accessor :first_name, :last_name,:all,:all_names
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
    # + Customer.all
    #   + should return all of the customers
    @@all
  end
  # + Customer.find_by_name(name)
  #   + given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    # binding.pry
    self.all_names.select{|customer|customer == name}
  end
  # + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select{|customer|self.first_name == name}
  end
  # + Customer.all_names
  #   + should return an array of all of the customer full names
  def self.all_names
    # binding.pry
    @@all.map{|customer|customer.full_name}
  end

  # + Customer#add_review(restaurant, content)
  #   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  def add_reviews(restaurant,content)
    Review.new(self.full_name,restaurant,content)
  end

end
