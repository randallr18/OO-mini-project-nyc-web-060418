class User

  @@all = []
  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def recipe_cards
  RecipeCard.all.select do |instance|
    instance.user == self
  end
end

def recipes
  self.recipe_cards.map do |card|
    card.recipe
  end
end

def add_recipe_card(recipe_instance, date, rating)
  user_recipecard = RecipeCard.new(recipe_instance, self, date, rating)
end

def declare_allergen(ingredient_instance)
  user_allergen = Allergen.new(self, ingredient_instance)
end

def allergens_helper
  Allergen.all.select {|instance| instance.user == self}
end

def allergens
  self.allergens_helper.map {|instance| instance.ingredient}
end

def most_recent_recipe
  self.recipes.last
end

# def self.most_popu
#   self.all.sort do |x, y|
#     x.user_cards.sort <=> y.user_cards.sort
#   end.last
# end

def top_three_recipes
  self.recipe_cards.sort do |x, y|
    x.rating <=> y.rating
  end.last(3)
end

end
