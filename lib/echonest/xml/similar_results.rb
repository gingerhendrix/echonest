
module EchoNest
  module Xml
    class SimilarResults
      include HappyMapper
     
      tag :similar
      def found
        -1
      end
      
      has_many :docs, SimilarDoc    
      
    end
  end
end
