require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
html2= open("https://newyork.craigslist.org/search/sss?search_distance=1&postal=07302&max_price=1000")


doc = Nokogiri::HTML(html)
doc2 = Nokogiri::HTML(html2)
courses2= doc2.css(".rows.result-row")
puts courses2

courses2.each do |course|
  puts course.text.strip
end

puts doc.css(".headline-26OIBN").text
courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses.each do |course|
  puts course.text.strip
end