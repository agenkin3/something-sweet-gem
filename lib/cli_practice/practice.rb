require 'pry'
class CLI
  def run
    #welcome the user
    welcome #implicit receiver is self

    #get/make cats
    #show menu
    API.new.get_cats
    binding.pry #will need to require pry at top 
  end 

  def welcome
    puts "welcome"
  end
end

class API

  def get_cats
    #www.cats.com - FAKE API CALL 
    cat_info_array = [
      {
        color: "red",
        size: "big",
        name: "Henry",
        age: 4
      },
      {
        color: "blue",
        size: "medium",
        name: "Sally",
        age: 2
      },
      {
        color: "black",
        size: "small",
        name: "Bob",
        age: 10
      },
      {
        color: "black", 
        size: "small",
        name: "Hope",
        age: 16
      },
      {
        color: "orange",
        size: "really big",
        name: "Garfield",
        age: 4
      }
    ]
    cat_info_array.each do |cat_info| 
      Cat.new(cat_info)
    end #here we are creating cats

  end

end

class Cat #this is model class
  attr_accessor :age, :color, :size, :name 
  @@all = [] #class variable
  
  def initialize #order matters
    @age = info_hash[:age]
    @color = info_hash[:color]
    @size = info_hash[:size]
    @name = info_hash[:name]
    @@all << self
  end

  def self.all #class method always includes "self"
    @@all #exposes Cat all array to world
  end

end
#anything with a capital letter (same as main space, same as self) is available everywhere
#to share with others, create module (same as namespace)
#gems are available to ruby community at large 
#would be in bin, require dependencies, tell terminal to use ruby, run your code
CLI.new.run
