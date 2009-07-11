require File.dirname(__FILE__) + '/../spec_helper'

describe "BlogResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/blog/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::BlogResult.parse(@xml)
    end
    
    it "should have artist" do
      blog = EchoNest::BlogResult.parse(@xml)
      blog.artist.should be_kind_of(EchoNest::Artist)
      blog.artist.name.should == "Radiohead"
      blog.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "should have results" do
      blog = EchoNest::BlogResult.parse(@xml)
      blog.results.should be_kind_of(EchoNest::BlogResults)
      #TODO: Fill in these values as found in fixture
      blog.results.found.should == "131"
      blog.results.shown.should == "2"
      blog.results.start.should == "0"
      blog.results.docs.should be_kind_of(Array)
      blog.results.docs.length.should == 2
    end
    
    describe "result" do
      it "should be an BlogDoc" do
        blog = EchoNest::BlogResult.parse(@xml)
        doc = blog.results.docs[0]  
        doc.should be_kind_of(EchoNest::BlogDoc)
        #TODO: Create tests based on attributes in resource
        doc.name.should == "Radiohead live at Santa Barbara 28.8.08 « Misspeak Music"
        doc.url.should == "http://misspeakmusic.wordpress.com/2008/09/01/radiohead-live-at-santa-barbara-28808/"
        doc.summary.should == "[blog text removed]"
        doc.date_found.should == "2008-10-14 16:38:15.582000"
      end
    end
  end    


end
