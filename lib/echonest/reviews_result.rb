
module EchoNest
  class ReviewsResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, ReviewsResults
    
  end
end
