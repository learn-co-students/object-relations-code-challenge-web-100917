# Please copy/paste all three classes into this file to submit your solution!
class Customer

  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name) #works
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name #working
    "#{first_name} #{last_name}"
  end

  def self.all #working
    @@all
  end

  def self.find_by_name(name) #working
    self.all.select {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(first_name) #working
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names #working
    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content) #working
    Review.new(self, restaurant, content)
  end

end
 ###end customer class

 class Review

   @@all = []

   attr_accessor :customer, :restaurant, :content

   def initialize(customer, restaurant, content) #working
     @customer = customer
     @restaurant = restaurant
     @content = content
     @@all << self
   end

   def self.all
     @@all
   end

 end
 ### end review class

 class Restaurant #working
   @@all = []
   attr_accessor :name

   def initialize(name) #working
     @name = name
     @@all << self
   end

   def self.all #working
     @@all
   end

   def self.find_by_name(name) #working
     self.all.select {|restaurant| restaurant.name == name}
   end

   def reviews #works
     Review.all.select {|review| review.restaurant == self}
   end

   def customers
     self.reviews.map do |review|
       review.customer
     end
   end

 end
 ### end restaurant class
