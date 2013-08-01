# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'louisville/version'

Gem::Specification.new do |gem|
  gem.name          = "louisville"
  gem.version       = Louisville::VERSION
  gem.authors       = ["Mike Nelson"]
  gem.email         = ["mike@mikeonrails.com"]
  gem.description   = %q{A simple slugging library}
  gem.summary       = %q{A simple slugging library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activerecord', '>= 3.0'
end
