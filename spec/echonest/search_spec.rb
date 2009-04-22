require File.dirname(__FILE__) + '/../spec_helper'

describe "ArtistSearch" do

  describe "#search" do
     before(:each) do
      @mock_request = mock "Request"
      @mock_request.stub!(:fetch)
      EchoNest::ApiRequest.stub!(:new).and_return(@mock_request)
      EchoNest::ArtistSearch.stub!(:parse)      
     end
      
    it "should create a new ApiRequest with resource 'search_artists' and :query => query" do
      EchoNest::ApiRequest.should_receive(:new).with('search_artists', :query=> "QUERY").and_return(@mock_request)
      EchoNest::ArtistSearch.search("QUERY")
    end
    
    it "should call fetch on the api request" do
      @mock_request.should_receive(:fetch)
      EchoNest::ArtistSearch.search("QUERY")
    end
    
    it "should call parse on the results of fetch" do
      @mock_request.stub!(:fetch).and_return("RESULT")
      EchoNest::ArtistSearch.should_receive(:parse).with("RESULT").and_return("search_result")
      EchoNest::ArtistSearch.search("QUERY").should == "search_result"
    end

  end

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
      search.artists[0].id.should == "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"      
    end
  
  end

end
