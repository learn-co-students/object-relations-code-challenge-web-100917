
class Review
  @@all = []

  attr_accessor :customer,:restaurant,:review,:all
    def initialize(customer,restaurant,review)
      @customer=customer
      @restaurant = restaurant
      @review = review
      @@all << self
    end

  # + Review.all
  #   + returns all of the reviews
  def self.all
    @@all
  end

  # + Review#customer
  #   + returns the customer for that given review

  def self.customer(review)
    @@all.select{|review|review.customer}
  end
  # + Review#restaurant
  #   + returns the restaurant for that given review
  def self.restaurant(review)
    @@all.select{|review|review.customer}
  end

end
