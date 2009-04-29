require File.dirname(__FILE__) + "/../spec_helper"

describe "ApiRequest" do
  before(:all) do
    EchoNest.api_key = "API_KEY"
  end

  describe "uri" do
    before(:each) do
      @uri = EchoNest::ApiRequest.new("artist_search", :query => "Wavves").uri
    end
    
    it "should have the right resource" do
      @uri.should be_starts_with("http://developer.echonest.com/api/artist_search?")
    end
    
    it "should contain query=Wavves" do
      @uri.should be_include("query=Wavves") #There must be a nicer way to write this 
    end
    
    it "should contain version=3" do
      @uri.should be_include("version=3")    
    end

    it "should contain api_key=API_KEY" do
      @uri.should be_include("api_key=API_KEY")    
    end
    
  end
  
  describe "uri " do
    it "should encode spaces" do
     @uri = EchoNest::ApiRequest.new("artist_search", :query => "Built to Spill").uri    
     @uri.should be_include("query=Built%20to%20Spill");
    end
  end
  
end
