require File.dirname(__FILE__) + '/../spec_helper'

describe "FamiliarityResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/familiarity/wavves.xml")
    end
    
    it "should parse xml" do
      EchoNest::FamiliarityResult.parse(@xml)
    end
    
    it "should have artist" do
      familiarity = EchoNest::FamiliarityResult.parse(@xml)
      familiarity.artist.should be_kind_of(EchoNest::Artist)
      familiarity.artist.name.should == "Wavves"
      familiarity.artist.id.should == "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"      
    end
    
    it "should have results" do
      familiarity = EchoNest::FamiliarityResult.parse(@xml)
      familiarity.results.should be_kind_of(EchoNest::BlogResults)
      #TODO: Fill in these values as found in fixture
      familiarity.results.found.should == "51"
      familiarity.results.shown.should == "15"
      familiarity.results.start.should == "0"
      familiarity.results.docs.should be_kind_of(Array)
      familiarity.results.docs.length.should == 15
    end
    
    describe "result" do
      it "should be an FamiliarityDoc" do
        familiarity = EchoNest::AudioResult.parse(@xml)
        doc = audio.results.docs[0]  
        doc.should be_kind_of(EchoNest::FamiliarityDoc)
        #TODO: Create tests based on attributes in resource
      end
    end
  end    


end
