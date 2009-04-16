require File.dirname(__FILE__) + '/../spec_helper'

describe "ArtistSearch" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/search_artists/wavves.xml")
    end
    
    it "should parse xml" do
      EchoNest::ArtistSearch.parse(@xml)
    end
    
    it "should have list of artists" do
      search = EchoNest::ArtistSearch.parse(@xml)
      search.artists.should be_kind_of(Array)
      search.artists[0].should be_kind_of(EchoNest::Artist)
      search.artists[0].name.should == "Wavves"
      search.artists[0].id.should == "Wavves"      
    end
  
  end

end
