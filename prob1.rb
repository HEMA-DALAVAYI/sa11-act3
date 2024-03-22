'''
Problem 1: URL Extractor
Objective: Develop a Ruby program to extract all URLs from a block of text.
Your program should be able to recognize URLs that start with http, https, or ftp, and
could contain various domain names and paths.
'''

def extract_urls(text)
  pattern = /((https|ftp|http):\/{2}(www.)?([a-zA-Z0-9]*)(.com|.org|.edu)((\/)?[a-zA-Z0-9]*)*(\?[a-zA-z0-9_]*=[a-zA-z0-9+]*)?)/
  text.scan(pattern)
  print(text.scan(pattern).map{|a|a[0]})
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
