class Customer
  attr_accessor :first_name, :last_name
  attr_reader :all

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
  #given a string of a full name, returns the first customer whose full name matches

  def self.find_by_name(name)
    splt = name.split(' ')
    self.all.find do |n|
      n.first_name == splt[0] && n.last_name == splt[1]
    end
  end

  #given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select { |n| name == n.first_name }
  end

  #should return an array of all of the customer full names
  def self.all_names
    self.all.map { |inst| inst.full_name }
  end

  #given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  def add_review(restaurant, content)
    #restaurant is an object, content is a string???
    Review.new(self, restaurant, content)
  end
end
