
module EchoNest
  class ProfileResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    
  end
end
