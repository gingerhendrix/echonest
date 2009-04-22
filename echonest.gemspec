# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{echonest}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gareth Andrew"]
  s.date = %q{2009-04-22}
  s.email = %q{gingerhendrix@hotmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/echonest.rb",
    "lib/echonest/api_request.rb",
    "lib/echonest/artist.rb",
    "lib/echonest/artist_search.rb",
    "lib/echonest/audio.rb",
    "lib/echonest/audio_doc.rb",
    "lib/echonest/audio_results.rb",
    "spec/echonest/api_request_spec.rb",
    "spec/echonest/audio_spec.rb",
    "spec/echonest/search_spec.rb",
    "spec/fixtures/audio/wavves.xml",
    "spec/fixtures/search_artists/wavves.xml",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/gingerhendrix/echonest}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{A ruby ribrary for accessing the echonest api}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/echonest/audio_spec.rb",
    "spec/echonest/search_spec.rb",
    "spec/echonest/api_request_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
