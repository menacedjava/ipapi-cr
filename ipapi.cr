require "http/client"
require "json"

response = HTTP::Client.get("http://ip-api.com/json")
data = JSON.parse(response.body)

city = data["city"].to_s
country = data["country"].to_s

puts "Joylashuv: #{city}, #{country}"
