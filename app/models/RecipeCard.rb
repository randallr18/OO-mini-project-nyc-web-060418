class RecipeCard

  @@all = []
  attr_reader :date
  attr_accessor :recipe, :user, :rating

def initialize(recipe, user, date, rating = nil)
  @recipe = recipe
  @user = user
  @date = date
  @rating = rating
  @@all << self
end

def self.all
  @@all
end

end
