
module EchoNest
  module Xml
    class AudioDoc
      include HappyMapper
      
      tag :doc
      
      element :artist_id, String
      element :foreign_artist_id, String
      element :artist, String
      element :release, String
      element :title, String
      element :url, String
      element :link, String
      element :date, String
      element :length, String
    end
  end
end
