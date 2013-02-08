# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "unlaut"
  gem.version       = '0.3'
  gem.authors       = ["Axel Tetzlaff"]
  gem.email         = ["axel.tetzlaff@fortytools.com"]
  gem.description   = %q{Replace umlauts and other unwanted chars in strings}
  gem.summary       = %q{Converts a configurable set of characters via a method added to the String class}
  gem.homepage      = "https://github.com/fortytools/unlaut"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
