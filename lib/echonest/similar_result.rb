
module EchoNest
  class SimilarResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, SimilarResults
    
  end
end
