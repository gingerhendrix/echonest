require File.dirname(__FILE__) + '/../spec_helper'

describe "ProfileResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/profile/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::ProfileResult.parse(@xml)
    end
    
    it "should have artist" do
      profile = EchoNest::ProfileResult.parse(@xml)
      profile.artist.should be_kind_of(EchoNest::Artist)
      profile.artist.name.should == "Radiohead"
      profile.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
      profile.artist.foreign_id.should == "music://id.echonest.com/5ZAOMB3BUR8QUN4PE/AR/1"   
    end
    
  end    


end
