
module EchoNest
  class Artist
    include HappyMapper
    
    def initialize(id=nil)
      @id = id if id
    end
    
    element :name, String
    element :id, String
    
    def get_audio
      request = ApiRequest.new("get_audio", {:id => id})
      Audio.parse request.fetch
    end
    
  end
end
