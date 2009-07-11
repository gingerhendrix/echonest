
module EchoNest
  class HotttnesssResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    
  end
end
