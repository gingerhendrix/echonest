

Dir.glob(File.dirname(__FILE__) + "/*_spec.rb").each do |file|
  if File.exists? "#{file}.old"
  `rm #{file}`
  `mv #{file}.old #{file}`
  end
  `sed s:'/../spec_helper':'/../../spec_helper': #{file} | sed s:"/../fixtures/:"/../../fixtures/: | sed s/EchoNest:://  | sed "s/\(Artist\)/\(ArtistDoc\)/" > #{file}.new`
  `mv #{file} #{file}.old`
  `mv #{file}.new #{file}`

end
