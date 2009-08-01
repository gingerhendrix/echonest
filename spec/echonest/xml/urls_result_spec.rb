require File.dirname(__FILE__) + '/../../spec_helper'

describe "UrlsResult" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../../fixtures/urls/radiohead.xml")
    end
    
    it "should parse xml" do
      UrlsResult.parse(@xml)
    end
    
    it "should have artist" do
      urls = UrlsResult.parse(@xml)
      urls.artist.should be_kind_of(ArtistDoc)
      urls.artist.name.should == "Radiohead"
      urls.artist.id.should == "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"      
    end
    
    it "#artist should have urls" do
      urls = UrlsResult.parse(@xml)
      artist = urls.artist

      artist.mb_url.should == "http://musicbrainz.org/artist/a74b1b7f-71a5-4011-9441-d0b5e4122711"
      artist.official_url.should == "http://radiohead.com"
      artist.myspace_url.should == "http://profile.myspace.com/215759866"
      artist.wikipedia_url.should == "http://en.wikipedia.org/wiki/Radiohead"
      artist.amazon_url.should == "http://www.amazon.com/gp/search?ie=UTF8&keywords=Radiohead&tag=httpechonecom-20&index=music"
      artist.itunes_url.should == "http://click.linksynergy.com/fs-bin/stat?id=a9bjKyUFOyQ&offerid=78941&type=3&subid=0&tmpid=1826&RD_PARM1=itms%253A%252F%252Fphobos.apple.com%252FWebObjects%252FMZSearch.woa%252Fwa%252Fcom.apple.jingle.search.DirectAction%252FadvancedSearchResults%253FartistTerm%253DRadiohead%2526partnerId%3D30"
                  
    end
    
  end    


end
