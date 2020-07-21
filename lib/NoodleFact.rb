require_relative "./cli.rb"
require_relative"./API.rb"

class NoodleFact
    #instances of model classes
    attr_accessor :inner_fact
    @@all = [] #class variable
    
    def initialize(attr_hash)
      @inner_fact = inner_fact
      @@all << self
    end

    def fact_list
      @fact_list
    end

    def save
      @@all << self
    end
  
    def self.all #class method always includes "self"
      @@all #exposes all instances of Noodle fact 
    end
  
end