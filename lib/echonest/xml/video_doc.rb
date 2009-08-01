
module EchoNest
  module Xml
    class VideoDoc
      include HappyMapper
      
      tag :doc
     
      #TODO: Add document elements
      element :site, String
      element :title, String
      element :url, String
      element :date_found, String
    end
  end
end
