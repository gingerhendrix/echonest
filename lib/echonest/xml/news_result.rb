
module EchoNest
  module Xml
    class NewsResult
      include HappyMapper
      
      tag :response
      
      has_one :artist, ArtistDoc
      has_one :results, NewsResults
      
    end
  end
end
