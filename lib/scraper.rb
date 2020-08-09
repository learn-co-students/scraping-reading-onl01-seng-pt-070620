require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
doc.css(".headline-26OIBN").text

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
 
courses.each do |course|
  puts course.text.strip
end

# puts doc
# puts doc.class   
# puts doc.css(".headline-26OIBN").text.strip

# courses = doc.css(".title-oE5vT4")
# courses.each do |course|
#   puts course.text.strip
# end
# puts doc.css(".title-oE5vT4")[0].attributes
# lis =  doc.css("li")
# lis.each do |li|
#   puts li.text
# end

