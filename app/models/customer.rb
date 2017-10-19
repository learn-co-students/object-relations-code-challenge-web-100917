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
      self.all.select {|obj| obj.full_name == name}
  end

  def self.find_by_first_name(first_name)
    self.all.select {|obj| obj.first_name == first_name}
  end

  def self.all_names
    self.all.map { |obj| obj.full_name }
  end

  def add_review(restaurant, content)
    Review.new(self.full_name, restaurant, content)
  end

end
