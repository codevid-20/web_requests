require 'http'

response = HTTP.get("https://data.cityofnewyork.us/resource/f9bf-2cp4.json")

pp response.parse
