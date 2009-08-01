
module EchoNest
  module Xml
    class ReviewsDoc
      include HappyMapper
      
      tag :doc
     
      element :name, String
      element :review_text, String
      element :url, String
      element :summary, String
      element :date_found, String
    end
  end
end
