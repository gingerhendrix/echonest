
module EchoNest
  class Artist
    include HappyMapper
    
    element :name, String
    element :id, String
  end
end
