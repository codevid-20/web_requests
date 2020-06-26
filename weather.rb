require 'http'

p "enter a city name"
user_input = gets.chomp

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{user_input}&units=metric&APPID=")

weather_data = response.parse


# print out the temperature in chicago
temperature = weather_data['main']['temp']
# print out the weather
description = weather_data['weather'][0]['description']
# print out the name "chicago"
city_name = weather_data['name']
# then turn that into a sentence

p "it is #{temperature} degrees and #{description} in #{city_name} right now"

# "it is 80 degrees and windy in chicago"



# user enter in the name of a city
# and we will tell them what the weather is there

