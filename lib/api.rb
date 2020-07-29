


class API
    BASE_URL = 'https://world.openfoodfacts.org/category/frozen_desserts.json'
    
    def self.grab_data 
        response = HTTParty.get(BASE_URL)
        dessert_products = response["products"]
        dessert_products.each do | dessert_product|
            dessert_hash = {
                name: dessert_product["product_name"],
                ingredients: dessert_product["ingredients_text"],
                allergens: dessert_product["allergens_hierarchy"],
                country: dessert_product["countries_tags"]
            }
            FrozenDessert.new(dessert_hash)
        end

      end

    end

#should create objects from this data and pass information to model class(NoodleFact)
# Possibly: Link CLI to get user input (please enter 9 digit food ID)
# save user input as variable, change id in BASE_URL to search different items
# return the product and ingredients for item that you searched