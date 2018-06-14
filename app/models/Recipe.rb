class Recipe

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def user_cards
    RecipeCard.all.select {|element| element.recipe == self}
  end
  # def most_popular_helper
  #   Allergen.all.select do |instance|
  #     instance.ingredient == self
  #   end
  # end

  def users
    self.user_cards.map do |card|
      card.user
    end
  end

  def self.most_popular
    self.all.sort do |x, y|
      x.user_cards.count <=> y.user_cards.count
    end.last
  end

  # def self.most_popular
  #   self.all.sort do |x, y|
  #     x.most_popular_helper.count <=> y.most_popular_helper.count
  #   end.last
  # end


  def ingredients_helper
    RecipeIngredient.all.select {|instance| instance.recipe == self}
  end

  def ingredients
    self.ingredients_helper.map {|instance| instance.ingredient}
  end

  def allergen_helper
    self.ingredients.collect do |instance|
      Allergen.all.select do |allergen_instance|
        instance == allergen_instance.ingredient
      end
    end.flatten
  end

  def allergen
    self.allergen_helper.map do |allergen_instance|
      allergen_instance.ingredient
    end.uniq
  end
  #
  def add_ingredients(ingredient_instance_array)
    ingredient_instance_array.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end


end



  # def self.users
  #   Recipe.all.map {|recipe| recipe.users}
  # end
  #
  # def self.most_popular
  #   count_users = 0
  #   username = ''
  #   # Recipe.users.map {|element| element.count }
  #   Recipe.users.each do |element|
  #     username = element.name
  #     count_users ++
