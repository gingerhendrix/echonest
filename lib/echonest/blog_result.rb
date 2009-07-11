
module EchoNest
  class BlogResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, BlogResults
    
  end
end
