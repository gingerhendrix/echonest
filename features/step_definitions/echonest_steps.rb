
When /^I search for "([^\"]*)"$/ do |query|
  @search = EchoNest::ArtistSearch.search query
end

Then /^I should get some search results$/ do
  @search.should_not be_nil
  @search.should be_kind_of(EchoNest::ArtistSearch)
end

Then /^the top result should have id "([^\"]*)"$/ do |id|
   @search.artists[0].should_not be_nil
   @search.artists[0].should be_kind_of(EchoNest::Artist)
   @search.artists[0].id.should == id
end

