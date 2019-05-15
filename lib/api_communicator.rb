require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  films_array = []
    response_hash["results"].each {|character|
      if character["name"].downcase == character_name
        films_array << character["films"]
      end
  }

  film_info_array = []
  films_array.flatten.each { |film|
    response_string = RestClient.get(film)
    response_hash= JSON.parse(response_string)
    film_info_array << response_hash
  }

  movie_titles = [];
  film_info_array.each {|movie|
    movie_titles << movie["title"]
  }
  movie_titles
 end

def print_movies(films)
  films.each {|film| puts film}
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
