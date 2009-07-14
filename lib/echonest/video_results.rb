
module EchoNest
  class VideoResults
    include HappyMapper
   
    tag :results
   
    attribute :found, String
    attribute :shown, String    
    attribute :start, String
    
    has_many :docs, VideoDoc    
    
  end
end
