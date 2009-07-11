
module EchoNest
  class Artist
    include HappyMapper
    
    def initialize(id=nil)
      @id = id if id
    end
    
    element :name, String
    element :id, String
    element :familiarity, Float
    
    def get_audio
      request = ApiRequest.new("get_audio", {:id => id})
      AudioResult.parse request.fetch
    end
    
    def get_blogs
      request = ApiRequest.new("get_audio", {:id => id})
      BlogResult.parse request.fetch
    end
    
    def get_familiarity
      request = ApiRequest.new("get_familiarity", {:id => id})
      result = request.fetch
      puts result
      FamiliarityResult.parse result
    end
    
  end
end
