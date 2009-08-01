
module EchoNest
  class Artist
    include HappyMapper
    
    attr_accessor :id
    
    def initialize(id=nil)
      @id = id if id
    end
      
    def get_audio
      request = ApiRequest.new("get_audio", {:id => id})
      Xml::AudioResult.parse request.fetch
    end
    
    def get_blogs
      request = ApiRequest.new("get_audio", {:id => id})
      Xml::BlogResult.parse request.fetch
    end
    
    def get_familiarity
      request = ApiRequest.new("get_familiarity", {:id => id})
      Xml::FamiliarityResult.parse request.fetch
    end
    
    def get_hotttnesss
      request = ApiRequest.new("get_hotttnesss", {:id => id})
      Xml::HotttnesssResult.parse request.fetch
    end
    
    def get_news
      request = ApiRequest.new("get_news", {:id => id})
      Xml::NewsResult.parse request.fetch
    end

    def get_profile
      request = ApiRequest.new("get_profile", {:id => id})
      Xml::ProfileResult.parse request.fetch
    end

    def get_similar
      request = ApiRequest.new("get_similar", {:id => id})
      Xml::SimilarResult.parse request.fetch
    end
    
    def get_reviews
      request = ApiRequest.new("get_reviews", {:id => id})
      Xml::ReviewsResult.parse request.fetch
    end
    
    def get_urls
      request = ApiRequest.new("get_urls", {:id => id})
      Xml::UrlsResult.parse request.fetch
    end
    
    def get_video
      request = ApiRequest.new("get_video", {:id => id})
      Xml::VideoResult.parse request.fetch
    end

  end
end
