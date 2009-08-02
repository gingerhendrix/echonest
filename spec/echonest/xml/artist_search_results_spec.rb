require File.dirname(__FILE__) + '/../../spec_helper'

describe "ArtistSearchResuls" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../../fixtures/search_artists/wavves.xml")
    end
    
    it "should parse xml" do
     ArtistSearchResults.parse(@xml)
    end
    
    it "should have list of artists" do
      search = ArtistSearchResults.parse(@xml)
      search.artists.should be_kind_of(Array)
      search.artists[0].should be_kind_of(ArtistDoc)
      search.artists[0].name.should == "Wavves"
      search.artists[0].id.should == "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"      
    end
  
  end

end
