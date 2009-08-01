
module EchoNest
  module Xml
    class ArtistDoc
      include HappyMapper
       
      tag :artist
       
      element :name, String
      element :id, String
      element :familiarity, Float
      element :hotttnesss, Float
      element :foreign_id, String
      
      element :mb_url, String
      element :official_url, String
      element :myspace_url, String
      element :wikipedia_url, String
      element :amazon_url, String
      element :itunes_url, String 
    end
  end
end
