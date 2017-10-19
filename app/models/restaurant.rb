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
