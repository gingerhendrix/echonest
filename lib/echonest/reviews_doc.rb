
module EchoNest
  class ReviewsDoc
    include HappyMapper
    
    tag :doc
   
    #TODO: Add document elements
    element :name, String
    element :review_text, String
    element :url, String
    element :summary, String
    element :date_found, String
  end
end
