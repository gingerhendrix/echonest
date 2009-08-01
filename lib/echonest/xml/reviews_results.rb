
module EchoNest
  module Xml
    class ReviewsResults
      include HappyMapper
     
      tag :results
     
      attribute :found, String
      attribute :shown, String    
      attribute :start, String
      
      has_many :docs, ReviewsDoc    
    
    end
  end
end
