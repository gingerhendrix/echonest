
module EchoNest
  module Xml
    class FamiliarityResult
        include HappyMapper
        
        tag :response
        
        has_one :artist, ArtistDoc
    end
  end
end
