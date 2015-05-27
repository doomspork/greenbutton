Gem::Specification.new do |s|
  s.name        = 'greenbutton'
  s.version     = '0.0.3'
  s.date        = '2015-05-26'
  s.summary     = 'Ruby parser for the GreenButton data standard.'
  s.description = 'This parser programmatically creates a Ruby object from a GreenButton XML data file, using the Nokogiri XML parsing library.'
  s.authors     = ['Sean Callan', 'Charles Worthington', 'Eric Hulburd']
  s.email       = ['sean@seancallan.com', 'c.e.worthington@gmail.com','eric@arbol.org']
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/doomspork/greenbutton'
  s.license     = 'MIT'

  s.add_dependency 'nokogiri', '~> 1.6'
  s.add_development_dependency 'bundler',     '~> 1.7'
  s.add_development_dependency 'pry',         '~> 0.10'
  s.add_development_dependency 'rspec',       '~> 3.1'
  s.add_development_dependency 'rspec-its',   '~> 1.0'
  s.add_development_dependency 'simplecov',   '~> 0.9'

  s.test_files  = Dir.glob('spec/*_spec.rb')
end
