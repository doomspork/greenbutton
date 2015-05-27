# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'green_button/version'

Gem::Specification.new do |s|
  s.name        = 'greenbutton'
  s.version     = GreenButton::VERSION
  s.summary     = 'Ruby parser for the GreenButton data standard.'
  s.description = 'This parser programmatically creates a Ruby object from a GreenButton XML data file, using the Nokogiri XML parsing library.'
  s.authors     = ['Sean Callan', 'Charles Worthington', 'Eric Hulburd']
  s.email       = ['sean@seancallan.com', 'c.e.worthington@gmail.com', 'eric@arbol.org']
  s.homepage    = 'https://github.com/doomspork/greenbutton'
  s.license     = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'nokogiri', '~> 1.6'

  s.add_development_dependency 'bundler',     '~> 1.7'
  s.add_development_dependency 'pry',         '~> 0.10'
  s.add_development_dependency 'rspec',       '~> 3.1'
  s.add_development_dependency 'rspec-its',   '~> 1.0'
  s.add_development_dependency 'simplecov',   '~> 0.9'

end
