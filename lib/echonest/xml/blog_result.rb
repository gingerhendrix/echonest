
module EchoNest
  module Xml
    class BlogResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, BlogResults
      
    end
   end
end
