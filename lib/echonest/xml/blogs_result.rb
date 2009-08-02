
module EchoNest
  module Xml
    class BlogsResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, BlogsResults
      
    end
   end
end
