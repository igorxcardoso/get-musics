require 'uri'
require 'net/http'

uri = URI('https://genius.com/albums/Uicideboy/Long-term-effects-of-suffering')

params = { :limit => 1, :page => 1 }
uri.query = URI.encode_www_form(params)
res = Net::HTTP.get_response(uri)

puts res.body if res.is_a?(Net::HTTPSuccess)