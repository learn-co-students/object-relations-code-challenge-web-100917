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

one = Customer.new("lina", "rudashevski")
two = Customer.new("michelle", "ru")
