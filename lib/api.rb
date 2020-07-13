require_relative "./cli.rb"
class API
    # Link CLI to get user input (please enter 9 digit food ID)
    # save user input as variable, change id in BASE_URL to search different items
    # return the product and ingredients for item that you searched
    BASE_URL = 'https://world.openfoodfacts.org/api/v0/product/737628064502.json'

    def grab_data
        noodleList = HTTParty.get(BASE_URL)
        puts "Would you to learn more about our Thai Noodle Kit from the open food database? For ingredients, please type ingredients. For nutrition facts, please type nutrition facts."
        answer4 = gets.chomp
        if answer4 == "ingredients"
            puts noodleList['product']['ingredients_text']
        puts "\nIf you'd like the full options list, please type options.\n"
        answer1 = gets.chomp
        end
        if answer4 == "nutrition facts" 
            puts nutrient_levels = noodleList ['product']['nutrient_levels']
            puts "If you'd like the full options list, please type options."
            answer1 = gets.chomp
        end  
        if answer1 != "options"
            puts "No more noodle facts for you then. \n"
            grab_data
            else puts noodleList['product'].keys
            puts "Please choose from the options above ^"
            end
        answer2 = gets.chomp
        answer_response = noodleList['product'][answer2]
        puts answer_response 
        puts "Thanks for using our Thai Noodle Kit database." 
    end

    
end