def extract_urls(text)
  # pattern that matches http, https, and ftp URLs
  pattern = /(?:https?|ftp):\/\/[^\s\/$.?#]+\.[^\s\/$?#]{2,}(?:\/[^\s.]+)?/
  # scan the text for the pattern and return the matches
  url = text.scan(pattern)

  # iterate over the matches and print each one
  url.each do |url|
    puts url
  end
end

sample_text = "Visit our site at http://www.example.org for more
information. Check out our search page at
https://example.com/search?q=ruby+regex. Don’t forget to ftp our
resources at ftp://example.com/resources."

extract_urls(sample_text)
