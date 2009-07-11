require File.dirname(__FILE__) + '/../spec_helper'

describe "FamiliarityResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/familiarity/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::FamiliarityResult.parse(@xml)
    end
    
    it "should have artist" do
      familiarity = EchoNest::FamiliarityResult.parse(@xml)
      familiarity.artist.should be_kind_of(EchoNest::Artist)
      familiarity.artist.name.should == "Radiohead"
      familiarity.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it " artist should have familiarity" do
      familiarity = EchoNest::FamiliarityResult.parse(@xml)
      familiarity.artist.should be_kind_of(EchoNest::Artist)
      familiarity.artist.familiarity.should_not be_nil
      familiarity.artist.familiarity.should == 0.96974159665
    end

    
  end    


end
