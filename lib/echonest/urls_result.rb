
module EchoNest
  class UrlsResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    
  end
end
