require File.dirname(__FILE__) + '/../spec_helper'

describe "Audio" do

  describe "#parse" do
    
    before(:each) do
      @xml =  File.read(File.dirname(__FILE__) + "/../fixtures/audio/wavves.xml")
    end
    
    it "should parse xml" do
      EchoNest::Audio.parse(@xml)
    end
    
    it "should have artist" do
      audio = EchoNest::Audio.parse(@xml)
      audio.artist.should be_kind_of(EchoNest::Artist)
      audio.artist.name.should == "Wavves"
      audio.artist.id.should == "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"      
    end
    
    it "should have results" do
      audio = EchoNest::Audio.parse(@xml)
      audio.results.should be_kind_of(EchoNest::AudioResults)
      audio.results.found.should == "51"
      audio.results.shown.should == "15"
      audio.results.start.should == "0"
      audio.results.docs.should be_kind_of(Array)
      audio.results.docs.length.should == 15
    end
    
    describe "result" do
      it "should be an AudioDoc" do
        audio = EchoNest::Audio.parse(@xml)
        doc = audio.results.docs[0]  
        doc.should be_kind_of(EchoNest::AudioDoc)
        doc.artist_id.should == "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
        doc.artist.should == "Wavves"
        doc.release.should == "03/21/09 Austin TX"
        doc.title.should == "So Bored (LIVE SXSW 2009)"
        doc.url.should == "http://www.2groundcontrol.com/IMAGENS/songs/03%20So%20Bored%20%28LIVE%20SXSW%202009%29.mp3"
        doc.link.should == "http://2groundcontrol.blogspot.com"
        doc.length.should == "265.0"
      end
    end
  end    


end
