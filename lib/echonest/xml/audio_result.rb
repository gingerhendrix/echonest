
module EchoNest
  module Xml
    class AudioResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, AudioResults
    end    
  end
end
