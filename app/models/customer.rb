class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all <<  self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    full_name = self.full_name(name)
    self.all.detect{|person| person.full_name = name}
  end

  def self.find_by_first_name(full_name)
    first = full_name.split(" ")[0]
    self.all.detect {|person| person.fist_name = first}
  end

  def add_review(review)
    review.Customer = self

  end

  def self.all_names
    #join first and last name in the all array
  end

  def self.all
    @@all
  end
end
