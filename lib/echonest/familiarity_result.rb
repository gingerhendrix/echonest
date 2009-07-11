
module EchoNest
  class FamiliarityResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    
  end
end
