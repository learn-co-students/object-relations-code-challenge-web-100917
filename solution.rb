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

  def self.find_by_name(name)
    split = name.split(' ')
    @@all.find do |i|
      i.first_name == split[0] && i.last_name == split[1]
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |i|
      i.first_name == name
    end
  end

  def self.all_names
    newArr = []
    @@all.each do |i|
      newArr.push(i.first_name + " " +i.last_name)
    end
    newArr
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content).customer = self

  end


end

#
#
# + Customer.all
#   + should return all of the customers
# + Customer.find_by_name(name)
#   + given a string of a full name, returns the first customer whose full name matches
# + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
# + Customer.all_names
#   + should return an array of all of the customer full names
# + Customer#add_review(restaurant, content)
#   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant




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
    @@all.find do |objs|
      objs.name == name
    end
  end

  def reviews
    Review.all.select do |i|
      i.restaurant == self
    end
  end

  def customers
    newArr = []
    Review.all.each do |i|
      if i.restaurant == self
        newArr.push(i.customer)
      end
    end
    newArr
  end

end


#
#
# + Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.



class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant, content=nil)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end




#
# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
