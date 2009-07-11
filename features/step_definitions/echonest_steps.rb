
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
  @audio.should be_kind_of(AudioResult)
  @audio.results.should_not be_nil
  @audio.results.docs.should be_kind_of(Array)
  @audio.results.docs.length.should > 0
  @audio.results.docs[0].should be_kind_of(AudioDoc)
  @audio.results.docs[0].url.should_not be_nil
end

When /^I retrieve the blogs for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @blogs = @artist.get_blogs
end

Then /^I should get some blog results$/ do
  @blogs.should_not be_nil
  @blogs.should be_kind_of(BlogResult)
  @blogs.results.docs.should be_kind_of(Array)
  @blogs.results.docs.length.should > 0
  @blogs.results.docs[0].should be_kind_of(BlogDoc)
  @blogs.results.docs[0].url.should_not be_nil
end

When /^I retrieve the familiarity for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @familiarity = @artist.get_familiarity
end

Then /^I should get some familiarity results$/ do
  @familiarity.should_not be_nil
  @familiarity.should be_kind_of(FamiliarityResult)
  @familiarity.artist.familiarity.should_not be_nil
  @familiarity.artist.familiarity.should be_kind_of(Float)
end

When /^I retrieve the hotttnesss for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @hotttnesss = @artist.get_hotttnesss
end

Then /^I should get some hotttnesss results$/ do
  @hotttnesss.should_not be_nil
  @hotttnesss.should be_kind_of(HotttnesssResult)
  @hotttnesss.artist.hotttnesss.should_not be_nil
  @hotttnesss.artist.hotttnesss.should be_kind_of(Float)
end


