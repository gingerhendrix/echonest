
module EchoNest
  module Xml
    class ArtistSearchResults
      include HappyMapper
    
      tag :response
      
  #    has_one :status, RequestStatus
  #    has_one :query, RequestQuery
      has_many :artists, ArtistDoc
    end  
  end
end
