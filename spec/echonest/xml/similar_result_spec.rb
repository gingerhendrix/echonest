require File.dirname(__FILE__) + '/../../spec_helper'

describe "SimilarResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../../fixtures/similar/radiohead.xml")
    end
    
    it "should parse xml" do
      SimilarResult.parse(@xml)
    end
    
    it "should have results" do
      similar = SimilarResult.parse(@xml)
      similar.results.should be_kind_of(SimilarResults)
      similar.results.docs.should be_kind_of(Array)
      similar.results.docs.length.should == 3
    end
    
    describe "result" do
      it "should be an SimilarDoc" do
        similar = SimilarResult.parse(@xml)
        doc = similar.results.docs[0]  
        doc.should be_kind_of(SimilarDoc)
        doc.id.should == "music://id.echonest.com/~/AR/ARKG7TE1187B9A45D8"
        doc.name.should == "Dinah Washington"
        doc.rank.should == 1
      end
    end
  end    


end
