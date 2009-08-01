
include EchoNest
include EchoNest::Xml

When /^I search for "([^\"]*)"$/ do |query|
  @search = ArtistSearch.search query
end

Then /^I should get some search results$/ do
  @search.should_not be_nil
  @search.should be_kind_of(ArtistSearch)
end

Then /^the top result should have id "([^\"]*)"$/ do |id|
   @search.artists[0].should_not be_nil
   @search.artists[0].should be_kind_of(ArtistDoc)
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


When /^I retrieve the news for "([^\"]*)"$/ do |arg1|
  @artist = Artist.new id
  pending("Service unavailable") do
    @news = @artist.get_news
  end
end

Then /^I should get some news results$/ do
  @news.should_not be_nil
  @news.should be_kind_of(NewsResult)
  @news.results.docs.should be_kind_of(Array)
  @news.results.docs.length.should > 0
  @news.results.docs[0].should be_kind_of(NewsDoc)
  @news.results.docs[0].url.should_not be_nil
end

When /^I retrieve the profile for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @profile = @artist.get_profile
end

Then /^I should get some profile results$/ do
  @profile.should_not be_nil
  @profile.should be_kind_of(ProfileResult)
  @profile.artist.should_not be_nil
  @profile.artist.name.should_not be_nil
  @profile.artist.id.should_not be_nil
end

When /^I retrieve the reviews for "([^\"]*)"$/ do |id|
  pending("Service Unavailable") do
    @artist = Artist.new id
    @reviews = @artist.get_reviews
  end
end

Then /^I should get some reviews results$/ do
  @news.should_not be_nil
  @news.should be_kind_of(ReviewsResult)
  @news.results.docs.should be_kind_of(Array)
  @news.results.docs.length.should > 0
  @news.results.docs[0].should be_kind_of(ReviewsDoc)
  @news.results.docs[0].url.should_not be_nil
end

When /^I retrieve the similar for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @similar = @artist.get_similar
end

Then /^I should get some similar results$/ do
  @similar.should_not be_nil
  @similar.should be_kind_of(SimilarResult)
  @similar.results.docs.should be_kind_of(Array)
  @similar.results.docs.length.should > 0
  @similar.results.docs[0].should be_kind_of(SimilarDoc)
  @similar.results.docs[0].name.should_not be_nil
  @similar.results.docs[0].id.should_not be_nil
end


When /^I retrieve the urls for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @urls = @artist.get_urls
end

Then /^I should get some urls results$/ do
  @urls.should_not be_nil
  @urls.should be_kind_of(UrlsResult)
  @urls.artist.should_not be_nil
  @urls.artist.name.should_not be_nil
  @urls.artist.id.should_not be_nil
  @urls.artist.mb_url.should_not be_nil
  @urls.artist.amazon_url.should_not be_nil
  @urls.artist.itunes_url.should_not be_nil
end

When /^I retrieve the videos for "([^\"]*)"$/ do |id|
  @artist = Artist.new id
  @videos = @artist.get_video
end

Then /^I should get some video results$/ do
  @videos.should_not be_nil
  @videos.should be_kind_of(VideoResult)
  @videos.results.docs.should be_kind_of(Array)
  @videos.results.docs.length.should > 0
  @videos.results.docs[0].should be_kind_of(VideoDoc)
  @videos.results.docs[0].url.should_not be_nil
end


