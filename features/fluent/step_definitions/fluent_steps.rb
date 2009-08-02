
include EchoNest

When /^I retrieve the ([^ ]*) for "([^\"]*)"$/ do |prop, artist|
  @artist = Artist.new artist
  begin
    @result = @artist.send(prop.to_sym)
  rescue OpenURI::HTTPError => e
    pending e
  end
end

Then /^I should get some results$/ do
   @result.should_not be_nil
   @result.should be_kind_of(Array)
   @result.length.should_not == 0
end

Then /^I should get a numeric result$/ do
   @result.should_not be_nil
   @result.should be_kind_of(Numeric)
end

Then /^I should get a string result$/ do
   @result.should_not be_nil
   @result.should be_kind_of(String)
end


Then /^a result should have a ([^ ]*)/ do |prop|
   @result[0].send(prop.to_sym).should_not be_nil
end

Then /^pending - service unavailable$/ do 

end

When /^I search for "([^\"]*)"$/ do |search|
  @result = Artist.find search
end



