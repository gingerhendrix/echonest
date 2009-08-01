
module EchoNest
  module Xml
    class SimilarResults
      include HappyMapper
     
      tag :similar
      
      has_many :docs, SimilarDoc    
      
    end
  end
end
