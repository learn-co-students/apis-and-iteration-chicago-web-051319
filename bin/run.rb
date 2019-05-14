#!/usr/bin/env ruby

require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"
require 'JSON'
require 'rest-client'

def welcome
  puts "Welcome, may the force be with you!"
  puts "Input a character to find out which movies they are in"
  character = gets.chomp
  show_character_movies(character)
end

welcome
