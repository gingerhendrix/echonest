require File.dirname(__FILE__) + '/../../spec_helper'

describe "HotttnessResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../../fixtures/hotttnesss/radiohead.xml")
    end
    
    it "should parse xml" do
      HotttnesssResult.parse(@xml)
    end
    
    it "should have artist" do
      hottnesss = HotttnesssResult.parse(@xml)
      hottnesss.artist.should be_kind_of(ArtistDoc)
      hottnesss.artist.name.should == "Radiohead"
      hottnesss.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "artist should have hottnesss" do
      hottnesss = HotttnesssResult.parse(@xml)
      hottnesss.artist.should be_kind_of(ArtistDoc)
      hottnesss.artist.hotttnesss.should_not be_nil
      hottnesss.artist.hotttnesss.should == 0.96974159665
    end
  end    


end
