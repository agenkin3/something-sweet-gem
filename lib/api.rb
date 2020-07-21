require 'pry'
require_relative "./cli.rb"

class API
    BASE_URL = 'https://world.openfoodfacts.org/api/v0/product/737628064502.json'
    
    def self.grab_data #why do we have to create objects here 
        response = HTTParty.get(BASE_URL)
        noodle_hash = {
           ingredients: response['product']['ingredients_ids_debug']

        }
        puts noodle_hash
        #noodle_hash.each do |fact|
            #NoodleFact.new fact
            #end
        end
        
      end

     def get_list
     end    

#should create objects from this data and pass information to model class(NoodleFact)
# Possibly: Link CLI to get user input (please enter 9 digit food ID)
# save user input as variable, change id in BASE_URL to search different items
# return the product and ingredients for item that you searched