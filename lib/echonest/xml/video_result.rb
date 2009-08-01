
module EchoNest
  module Xml
    class VideoResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, VideoResults
      
    end
  end
end
