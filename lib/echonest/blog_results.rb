
module EchoNest
  class BlogResults
    include HappyMapper
   
    tag :results
   
    attribute :found, String
    attribute :shown, String    
    attribute :start, String
    
    has_many :docs, BlogDoc    
    
  end
end
