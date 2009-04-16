
module EchoNest
  class ArtistSearch
    include HappyMapper
  
    tag :response
    
#    has_one :status, RequestStatus
#    has_one :query, RequestQuery
    has_many :artists, Artist
  
    def self.search(query)
      request = ApiRequest.new("search_artists", {:query => query})
      parse(request.fetch)
    end
  
  end
end
