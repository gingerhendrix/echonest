
module EchoNest
  class Artist
    include HappyMapper
    
    def initialize(id=nil)
      @id = id if id
    end
    
    element :name, String
    element :id, String
    element :familiarity, Float
    element :hotttnesss, Float
    element :foreign_id, String
      
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
      FamiliarityResult.parse request.fetch
    end
    
    def get_hotttnesss
      request = ApiRequest.new("get_hotttnesss", {:id => id})
      HotttnesssResult.parse request.fetch
    end
    
    def get_news
      request = ApiRequest.new("get_news", {:id => id})
      NewsResult.parse request.fetch
    end

    def get_profile
      request = ApiRequest.new("get_profile", {:id => id})
      ProfileResult.parse request.fetch
    end

    def get_similar
      request = ApiRequest.new("get_similar", {:id => id})
      SimilarResult.parse request.fetch
    end

  end
end
