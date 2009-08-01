
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

require "echonest/xml/artist_doc.rb"

require "echonest/xml/audio_doc.rb"
require "echonest/xml/audio_results.rb"
require "echonest/xml/audio_result.rb"

require "echonest/xml/blog_doc.rb"
require "echonest/xml/blog_results.rb"
require "echonest/xml/blog_result.rb"

require "echonest/xml/familiarity_result.rb"

require "echonest/xml/hotttnesss_result.rb"

require "echonest/xml/news_doc.rb"
require "echonest/xml/news_results.rb"
require "echonest/xml/news_result.rb"

require "echonest/xml/profile_result.rb"

require "echonest/xml/reviews_doc.rb"
require "echonest/xml/reviews_results.rb"
require "echonest/xml/reviews_result.rb"

require "echonest/xml/similar_doc.rb"
require "echonest/xml/similar_results.rb"
require "echonest/xml/similar_result.rb"

require "echonest/xml/urls_result.rb"

require "echonest/xml/video_doc.rb"
require "echonest/xml/video_results.rb"
require "echonest/xml/video_result.rb"
