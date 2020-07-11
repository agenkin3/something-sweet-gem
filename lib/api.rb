require_relative "./cli.rb"
class API
    # Link CLI to get user input (please enter 9 digit food ID)
    # save user input as variable, change id in BASE_URL to search different items
    # return the product and ingredients for item that you searched
    BASE_URL = 'https://world.openfoodfacts.org/api/v0/product/737628064502.json'

    def grab_data
        noodleList = HTTParty.get(BASE_URL)
        puts "Would you like to see our menu? If yes, type menu"
        answer1 = gets.chomp
        if answer1 != "menu"
            puts "then what"
        else puts noodleList['product'].keys
        #product_name = noodleList['product']['product_name_en']
        #ingredients = noodleList['product']['ingredients_text']
        #nutrient_levels = noodleList ['product']['nutrient_levels']
        #puts noodleList['product'].keys
        #this prints the entire list of options
        end
        answer2 = gets.chomp
        answer_response = noodleList['product'][answer2]
        puts answer_response





        #puts product_name
        #puts ingredients
        #puts nutrient_levels
    
        
    end

    # def parse_response()
    #     // do something to my response
end

    # def get_city_restaurants(entity_id=664, entity_type="city")
    #   response = HTTParty.get(
    #     "#{BASE_URL}/search?entity_id=#{entity_id}&entity_type=#{entity_type}",
    #     {
    #       headers: {
    #         "Accept": "application/json",
    #         "user-key": ENV["ZOMATO_API_KEY"]
    #       }
    #     }
    #   )
    #   puts response
    #   restaurants_array = response["restaurants"]
    #   restaurants_array.each do |restaurant_hash|
    #     restaurant_hash["restaurant"]
    #     info_hash = {
    #       name: restaurant_hash["restaurant"]["name"],
    #       url: restaurant_hash["restaurant"]["url"],
    #       address: restaurant_hash["restaurant"]["location"]["address"],
    #       locality: restaurant_hash["restaurant"]["location"]["locality"],
    #       city: restaurant_hash["restaurant"]["location"]["city"],
    #       zipcode: restaurant_hash["restaurant"]["location"]["zipcode"],
    #       cuisines: restaurant_hash["restaurant"]["cuisines"],
    #       rating: restaurant_hash["restaurant"]["user_rating"]["aggregate_rating"]
    #     }
        # ExampleCliWithZomato::Restaurant.new(info_hash)
    #   end

#     end
#   end
# end