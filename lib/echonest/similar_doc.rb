
module EchoNest
  class SimilarDoc
    include HappyMapper
    
    tag :artist
   
    #TODO: Add document elements
    element :name, String
    element :id, String
    element :rank, Integer
  end
end
