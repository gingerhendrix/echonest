
module EchoNest
  module Xml
    class ReviewsResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, ReviewsResults
      
    end
  end
end

