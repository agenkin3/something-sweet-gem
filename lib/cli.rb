class CLI
    
    def start
        welcome
        print_menu
    end

    # def list_all_options
    #     #use class method where you list all 
    # end

    def welcome
        API.grab_data
        puts "Welcome to Open Food facts - Frozen Desserts."
    end

    def print_menu
        @n = FrozenDessert.all.length
        puts "Please choose from one of the following options (1-#{@n}) or say 'no' to leave or 'random' for a random selection:"
        FrozenDessert.all.each.with_index(1) do |dessert, i| #what does the 1 do?
            puts "(#{i}) #{dessert.name}"
        end
        get_user_input
    end
    
    def display(str)
        if str.empty?
            puts 'Nothing to show here.'
        else
            puts str
        end
    end

    def get_user_input
        input = gets.chomp
        if input == 'random' 
           random_choice = (1..20).to_a.sample
           puts "The random number selected is #{random_choice}!"
           dessert = FrozenDessert.all[random_choice-1]
           dessert_submenu(dessert)
        elsif input != 'no'
            input = input.to_i #can be entire new method
            if input < 1 || input > @n
                puts "Please enter a valid number (1-#{@n}) or say 'no' to go back."
                get_user_input
            else
                dessert = FrozenDessert.all[input-1]#
                dessert_submenu(dessert)
            end
        else
            puts "Thank you, and goodbye!"
        end
      end

    def dessert_submenu(dessert)
        puts "Would you like to see ingredients, allergens, or country of origin? (type one of these options or say 'no' to go back)?"
        input = gets.chomp
        if input != 'no'
            if input == "ingredients"
                puts display(dessert.ingredients)
            elsif input == "allergens"
                puts display(dessert.allergens)
            elsif input == 'country of origin'
                 puts display(dessert.country)
            else
                puts "Please enter 'ingredients', 'country of origin','allergens', or 'no'"
            end
            puts "Here are your options for #{dessert.name} :"
            dessert_submenu(dessert) 
        else
            print_menu
        end
    
    end


      
end

