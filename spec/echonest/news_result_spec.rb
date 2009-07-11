require File.dirname(__FILE__) + '/../spec_helper'

describe "NewsResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/news/radiohead.xml")
    end
    
    it "should parse xml" do
      EchoNest::NewsResult.parse(@xml)
    end
    
    it "should have artist" do
      news = EchoNest::NewsResult.parse(@xml)
      news.artist.should be_kind_of(EchoNest::Artist)
      news.artist.name.should == "Radiohead"
      news.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "should have results" do
      news = EchoNest::NewsResult.parse(@xml)
      news.results.should be_kind_of(EchoNest::NewsResults)

      news.results.found.should == "67"
      news.results.shown.should == "2"
      news.results.start.should == "0"
      news.results.docs.should be_kind_of(Array)
      news.results.docs.length.should == 2
    end
    
    describe "result" do
      it "should be an NewsDoc" do
        news = EchoNest::NewsResult.parse(@xml)
        doc = news.results.docs[0]  
        doc.should be_kind_of(EchoNest::NewsDoc)

        doc.name.should == "Modeselektor supports Radiohead in Japan"
        doc.url.should == "http://www.residentadvisor.net/news.aspx?id=9632"
        doc.summary.should == "[news text removed]"
        doc.date_found.should == "2008-11-26 21:19:35.356000"

      end
    end
  end    


end
