require 'httparty'
require 'nokogiri'
require 'byebug'

class Scraper
  url = "https://banco.santander.cl/beneficios/todos?segmento=s-personas&categoria=shopping"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end

Scraper