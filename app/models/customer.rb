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

  def self.find_by_name(w_name)
    #I know this wouldn't really work with long names or Jr., III, etc., but for the purpose of this lab, I think it's fine
    whole_name = w_name.split(" ")
    f_name = whole_name[0]
    l_name = whole_name[1]
    @@all.find do |x|
      if x.first_name == f_name && x.last_name == l_name
        return x
      end
    end
  end

  def self.find_all_by_first_name(f_name)
    all_by_first_names = []
    @@all.collect do |x|
      if x.first_name == f_name
        all_by_first_names << x
      end
    end
    all_by_first_names
  end

  def self.all_names
    all_names = []
    @@all.each do |x|
      f_name = x.first_name
      l_name = x.last_name
      all_names << (f_name + " " + l_name)
    end
    all_names
  end

  def add_review(rest, content)
    new_restaurant = Restaur
    new_review = Review.new(self, rest, content)
    new_review.customer = self
    new_review.restaurant = rest
    new_review
  end

end
