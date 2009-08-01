
module EchoNest
  module Xml
    class SimilarResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, SimilarResults
      
    end
  end
end
