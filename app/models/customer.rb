class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all_customers = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.find_by_name name
    @@all_customers.find{|customer| "#{customer.first_name} #{customer.last_name}" == name}.full_name
  end

  def self.find_all_by_first_name name
    @@all_customers.select{|customer| customer.first_name == name}
  end

  def self.all_names
    @@all_customers.map{|customer| customer.full_name}
  end

  def add_review restaurant, content
    Review.new(self, restaurant, content)
    restaurant.reviews = self
  end
end
