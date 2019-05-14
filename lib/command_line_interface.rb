def welcome
  # puts out a welcome message here!
  puts "Welcome to a Star Wars Dictionary"
  puts "Contains information regarding the canon Star Wars timeline"
  get_character_from_user
  
end

def get_character_from_user
  puts "please enter a character name"
  inp = gets.chomp
  inp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
