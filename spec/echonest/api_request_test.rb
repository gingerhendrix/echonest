require File.dirname(__FILE__) + "/../spec_helper"

describe "ApiRequest" do
  before(:all) do
    EchoNest.api_key = "API_KEY"
  end

  it { EchoNest::ApiRequest.new("artist_search", :query => "Wavves").uri.should == "http://developer.echonest.com/api/artist_search?query=Wavves&api_key=API_KEY&version=3" }

end
