#nokogiri

require "nokogiri"
require "open-uri"

pageurl = "https://www.books.com.tw/web/sys_saletopb/books"
page = Nokogiri::HTML(URI.open(pageurl))

books = page.css(".item h4")
books.each do |book|
  puts book.text
end
