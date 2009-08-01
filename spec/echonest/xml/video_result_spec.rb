require File.dirname(__FILE__) + '/../../spec_helper'

describe "VideosResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../../fixtures/video/radiohead.xml")
    end
    
    it "should parse xml" do
      VideoResult.parse(@xml)
    end
    
    it "should have artist" do
      videos = VideoResult.parse(@xml)
      videos.artist.should be_kind_of(ArtistDoc)
      videos.artist.name.should == "Radiohead"
      videos.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "should have results" do
      videos = VideoResult.parse(@xml)
      videos.results.should be_kind_of(VideoResults)

      videos.results.found.should == "88"
      videos.results.shown.should == "2"
      videos.results.start.should == "0"
      videos.results.docs.should be_kind_of(Array)
      videos.results.docs.length.should == 2
    end
    
    describe "result" do
      it "should be an VideoDoc" do
        videos = VideoResult.parse(@xml)
        doc = videos.results.docs[0]  
        doc.should be_kind_of(VideoDoc)

        doc.site.should == "youtube"
        doc.title.should == "Radiohead- Tell Me Why- Live Hollywood Bowl Neil Young 8-25"
        doc.url.should == "http://youtube.com/watch?v=kHIJcx9EB94"
        doc.date_found.should == "2008-11-02 16:32:27.001000"
      end
    end
  end    


end
