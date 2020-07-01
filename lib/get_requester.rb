require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  def initialize(URL)
    @uri = URI.parse(URL)
  end
  
  def get_response_body
    response = Net::HTTP.get_response(@uri)
    response.body
  end
  
  def parse_json
    results = JSON.parse(self.get_response_body)
  end
  
  results = GetRequester.new
  puts results
end