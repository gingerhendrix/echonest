require File.dirname(__FILE__) + '/../spec_helper'

describe "ReviewsResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/reviews/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::ReviewsResult.parse(@xml)
    end
    
    it "should have artist" do
      reviews = EchoNest::ReviewsResult.parse(@xml)
      reviews.artist.should be_kind_of(EchoNest::Artist)
      reviews.artist.name.should == "Radiohead"
      reviews.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "should have results" do
      reviews = EchoNest::ReviewsResult.parse(@xml)
      reviews.results.should be_kind_of(EchoNest::ReviewsResults)
      #TODO: Fill in these values as found in fixture
      reviews.results.found.should == "188"
      reviews.results.shown.should == "2"
      reviews.results.start.should == "0"
      reviews.results.docs.should be_kind_of(Array)
      reviews.results.docs.length.should == 2
    end
    
    describe "result" do
      it "should be an ReviewsDoc" do
        reviews = EchoNest::ReviewsResult.parse(@xml)
        doc = reviews.results.docs[0]  
        doc.should be_kind_of(EchoNest::ReviewsDoc)
        #TODO: Create tests based on attributes in resource
        doc.name.should == "Radiohead - Hail to the Thief (from Robert Christgau)"
        doc.review_text.should == "See: No Hope Radio."
        doc.url.should == "http://www.robertchristgau.com/get_artist.php id=1113&name=Radiohead#Radiohead__Hail%20to%20the%20Thief"
        doc.summary.should == "See: No Hope Radio."
        doc.date_found.should == "2009-01-26T23:54:41"
      end
    end
  end    


end
