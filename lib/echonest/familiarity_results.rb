
module EchoNest
  class FamiliarityResults
    include HappyMapper
   
    tag :results
   
    attribute :found, String
    attribute :shown, String    
    attribute :start, String
    
    has_many :docs, FamiliarityDoc    
    
  end
end
