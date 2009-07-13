
module EchoNest
  class SimilarResults
    include HappyMapper
   
    tag :similar
    
    has_many :docs, SimilarDoc    
    
  end
end
