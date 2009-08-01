
module EchoNest
  module Xml
   class NewsResults
      include HappyMapper
     
      tag :results
     
      attribute :found, String
      attribute :shown, String    
      attribute :start, String
      
      has_many :docs, NewsDoc    
    end     
  end
end
