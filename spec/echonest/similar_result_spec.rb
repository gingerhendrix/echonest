require File.dirname(__FILE__) + '/../spec_helper'

describe "SimilarResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/similar/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::SimilarResult.parse(@xml)
    end
    
    it "should have results" do
      similar = EchoNest::SimilarResult.parse(@xml)
      similar.results.should be_kind_of(EchoNest::SimilarResults)
      similar.results.docs.should be_kind_of(Array)
      similar.results.docs.length.should == 3
    end
    
    describe "result" do
      it "should be an SimilarDoc" do
        similar = EchoNest::SimilarResult.parse(@xml)
        doc = similar.results.docs[0]  
        doc.should be_kind_of(EchoNest::SimilarDoc)
        doc.id.should == "music://id.echonest.com/~/AR/ARKG7TE1187B9A45D8"
        doc.name.should == "Dinah Washington"
        doc.rank.should == 1
      end
    end
  end    


end
