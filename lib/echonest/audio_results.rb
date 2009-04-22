
module EchoNest
  class AudioResults
    include HappyMapper
   
    tag :results
   
    attribute :found, String
    attribute :shown, String    
    attribute :start, String
    
    has_many :docs, AudioDoc    
    
  end
end
