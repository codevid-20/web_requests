require 'http'
require 'awesome_print'

# definitions

p "enter a word here"
user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")


definition = response.parse[0]['text']

p definition

# top example

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")

top_example = response.parse['text']
p top_example



response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=")

pronunciation = response.parse[0]['raw']

p pronunciation
