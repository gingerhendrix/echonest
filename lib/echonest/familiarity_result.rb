
module EchoNest
  class FamiliarityResult
    include HappyMapper
    
    tag :response
    
    has_one :artist, Artist
    has_one :results, FamiliarityResults
    
  end
end
