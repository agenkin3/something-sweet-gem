require 'pry'
require_relative "./cli.rb"

class API
    BASE_URL = 'https://world.openfoodfacts.org/api/v0/product/737628064502.json'
    def grab_data
        noodle_hash = HTTParty.get(BASE_URL)
        noodle_hash.each do |fact|
            fact.each do |inner_fact_list|
                NoodleFact.new(inner_fact_list)
                end
            end
        end
      end


#should create objects from this data and pass information to model class(NoodleFact)

    # Possibly: Link CLI to get user input (please enter 9 digit food ID)
    # save user input as variable, change id in BASE_URL to search different items
    # return the product and ingredients for item that you searched