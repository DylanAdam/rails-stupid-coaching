require 'open-uri'
require 'nokogiri'

class Scraper

  url = "https://banco.santander.cl/beneficios/todos?segmento=s-personas&categoria=shopping"

  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.ng-binging').each do |element|
    puts element.text.strip
  end
end
