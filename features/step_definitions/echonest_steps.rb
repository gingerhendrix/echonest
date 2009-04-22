
include EchoNest

When /^I search for "([^\"]*)"$/ do |query|
  @search = ArtistSearch.search query
end

Then /^I should get some search results$/ do
  @search.should_not be_nil
  @search.should be_kind_of(ArtistSearch)
end

Then /^the top result should have id "([^\"]*)"$/ do |id|
   @search.artists[0].should_not be_nil
   @search.artists[0].should be_kind_of(Artist)
   @search.artists[0].id.should == id
end

When /^I retrieve the audio for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @artist.id.should == id
  @audio = @artist.get_audio
end

Then /^I should get some audio results$/ do
  @audio.should_not be_nil
  @audio.should be_kind_of(Audio)
  @audio.results.should_not be_nil
  @audio.results.docs.should be_kind_of(Array)
  @audio.results.docs.length.should > 0
  @audio.results.docs[0].should be_kind_of(AudioDoc)
  @audio.results.docs[0].url.should_not be_nil
end

