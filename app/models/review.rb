class Review
    attr_accessor :name, :customer, :review

    @@reviews = []

    def initialize(name, review)
      @name = name
      Customer.add_review(self)
      @@reviews << self
    end

    def all
      @@reviews
    end
    def self.customer
      self.Customer.name
    end

    def self.restuurant
    end

    def

      
end
