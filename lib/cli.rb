require_relative "./api.rb"

class CLI 
    attr_accessor :input

    def initialize
        @input = ""
    end
    
    def start
        self.welcome
        self.print_menu
        self.get_user_input
    end

    def welcome
        puts "Welcome to Open Food facts - Thai Noodle Kit. Please choose from one of the following options:"
        #self.get_user_input
    end

    def print_menu
        puts "ingredients, nutrition"
    end 

    def get_user_input
        self.input = gets.chomp
        if input = "ingredients"
            API.grab_data
            puts NoodleFact.all
        end
      end

      def space
        puts ""
      end

    def goodbye
        space
        puts "Thanks for using this app!"
        space
    end

      
end


#gets information from user
#running of the show 
#get the things and turn them into objects
#all puts and gets statements should live in the CLI class
