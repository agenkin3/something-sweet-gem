class CLI 
    def welcome
        puts "Welcome to Open Food facts - Thai Noodle Kit. Please choose from one of the options below"
        API.new.grab_data
    end
end


#gets information from user
#running of the show 
#get the things and turn them into objects
#all puts and gets statements should live in the CLI class
