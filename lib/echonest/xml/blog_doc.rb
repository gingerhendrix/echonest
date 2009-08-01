
module EchoNest
  module Xml
    class BlogDoc
      include HappyMapper
      
      tag :doc
     
      element :name, String
      element :url, String
      element :summary, String
      element :date_found, String
    end
  end
end
