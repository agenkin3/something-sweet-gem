require_relative "./cli.rb"
require_relative"./api.rb"

class FrozenDessert
    attr_reader :name, :ingredients, :allergens #add another attribute here, a way to see a random desert

    @@all = [] 
    
    def initialize(attr_hash)
      @ingredients = attr_hash[:ingredients]
      @name = attr_hash[:name]
      @allergens = attr_hash[:allergens]
      save #same as self.save
    end

    def save
      @@all << self
    end
  
    def self.all #class method always includes "self"
      @@all #exposes all instances of frozen dessert
    end
  
end