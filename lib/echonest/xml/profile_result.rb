
module EchoNest
  module Xml
    class ProfileResult
      include HappyMapper
    
      tag :response
    
      has_one :artist, ArtistDoc
    end
  end
end
