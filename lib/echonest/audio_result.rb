
module EchoNest
  class AudioResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, AudioResults
    
  end
end
