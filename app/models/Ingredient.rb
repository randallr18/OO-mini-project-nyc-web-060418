class Ingredient

  @@all = []
  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def most_popular_helper
  Allergen.all.select do |instance|
    instance.ingredient == self
  end
end

def self.most_popular
  self.all.sort do |x, y|
    x.most_popular_helper.count <=> y.most_popular_helper.count
  end.last
end


end
