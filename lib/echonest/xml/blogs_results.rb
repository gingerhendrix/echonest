
module EchoNest
  module Xml
    class BlogsResults
      include HappyMapper
     
      tag :results
     
      attribute :found, String
      attribute :shown, String    
      attribute :start, String
      
      has_many :docs, BlogsDoc    
      
    end
  end
end

