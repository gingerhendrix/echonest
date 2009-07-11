
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
require "echonest/audio_doc.rb"
require "echonest/audio_results.rb"
require "echonest/audio_result.rb"
require "echonest/blog_doc.rb"
require "echonest/blog_results.rb"
require "echonest/blog_result.rb"
require "echonest/familiarity_result.rb"
require "echonest/hotttnesss_result.rb"

require "echonest/news_doc.rb"
require "echonest/news_results.rb"
require "echonest/news_result.rb"

