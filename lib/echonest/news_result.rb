
module EchoNest
  class NewsResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, NewsResults
    
  end
end
