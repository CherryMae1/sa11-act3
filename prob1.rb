def extract_urls(text)
  pattern = /(?:http|https|ftp):\/\/[\S]+/
  url = text.scan(pattern)
  url.each{ |x| puts x }
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex Don’t forget to ftp our resources at ftp://example.com/resources"

extract_urls(sample_text)
