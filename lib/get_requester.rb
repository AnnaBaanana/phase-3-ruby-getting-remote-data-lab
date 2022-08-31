require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

# Write your code here
class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
        puts  "This #{url} was supplied"
    end

    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        #data = JSON.parse(response.body)
    end

    def parse_json
        data = JSON.parse(self.get_response_body)
    end

end

binding.pry

