require 'httparty'
require 'json'
require 'rubygems'
require 'pp'

url = 'https://www.googleapis.com/books/v1/volumes?q=programming+ruby'
response = HTTParty.get(url)
#puts response.parsed_response 
items = JSON.parse(response.body, {symbolize_names => true})
puts items[:items]
