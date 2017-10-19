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
    @@all.find{|rest| rest.name == name}
  end

  def customers
    self.reviews.map {|rev| rev.customer }
  end

  def competitors
    comp = self.customers.map{|cust| cust.restaurants}.flatten.uniq
    comp.delete_if {|rest| rest == self }
  end

  def reviews
    Review.all.select{|rev| rev.restaurant == self}
  end

end
