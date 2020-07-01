require 'net/http'
require 'open-uri'
require 'json'

Class GetRequester

  def initialize(url)
    @uri = URI.parse(url)
  end
  
  def get_response_body
    response = Net::HTTP.get_response(@uri)
    response.body
  end
  
  def parse_json
    results = JSON.parse(self.get_response_body)
    results.collect do |each|
      each
  end
  
  results = GetRequester.new
  puts results
end