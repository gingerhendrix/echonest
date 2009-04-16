
require 'happymapper'
require 'open-uri'

module EchoNest
   def self.api_key=(api_key)
    @api_key = api_key
   end  
   
   def self.api_key
    @api_key
   end  

end

require "echonest/api_request.rb"
require "echonest/artist.rb"
require "echonest/artist_search.rb"

