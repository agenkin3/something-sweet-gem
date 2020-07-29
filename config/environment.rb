#all require files go in environment
#use require to load all gems first   

require "bundler/setup" #tells bundler to search machine for gems from file 
Bundler.require 

#use require relative to load all your code 

require_relative "../lib/cli.rb"
require_relative "../lib/api.rb"
require_relative "../lib/frozen_dessert.rb"

#all top level (not inside module or class) declarations/constants are available