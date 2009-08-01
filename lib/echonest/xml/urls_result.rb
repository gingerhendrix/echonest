
module EchoNest
  module Xml

    class UrlsResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      
    end
  end
end
