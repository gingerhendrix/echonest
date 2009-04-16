
module EchoNest
  class ApiRequest
  
    def initialize(resource, options)
      @options = {:version =>3, :api_key => EchoNest.API_KEY}.merge(options)
      @resource = resource
    end
    
    def uri
      "http://developer.echonest.com/api/"+resource+"?" + query_string(@options)
    end
    
    def fetch
      open(uri)
    end
    
    private
    
    def query_string(options)
      options.keys.map { |key| 
        (key.to_s + "=" + options[key]) 
      }.join('&')
    end
  
  end

end
