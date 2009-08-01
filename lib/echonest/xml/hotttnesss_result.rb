
module EchoNest
  module Xml
    class HotttnesssResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
    end    
  end
end
