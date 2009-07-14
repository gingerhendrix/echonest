
module EchoNest
  class VideoResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, VideoResults
    
  end
end
