
require 'rubygems'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'echonest'
require 'highline'

include EchoNest

EchoNest.api_key = "CREDOYO7GFJ9OW3TV"

HighLine.track_eof = false
highline = HighLine.new

artist_name = highline.ask "Please type an artist name? "
artist_search = Artist.find artist_name
search_names = artist_search.map(&:name)
highline.say "Found #{search_names.length}"
choice = highline.choose do |menu|
  menu.select_by = :index
  menu.choices(*search_names)
end 
idx = search_names.index choice
highline.say "Finding audio for #{artist_search[idx].name} - #{artist_search[idx].id}"
artist = Artist.new artist_search[idx].id
audio = artist.audio
highline.say "Found #{audio.found}, retrieved #{audio.length}"
highline.say highline.list( audio.map(&:title) )
while highline.agree "Next?"
  audio.next_page
  highline.say highline.list( audio.map(&:title) )
end

