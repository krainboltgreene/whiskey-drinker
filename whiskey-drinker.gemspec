# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "whiskey/drinker/version"

Gem::Specification.new do |spec|
  spec.name          = "whiskey-drinker"
  spec.version       = Whiskey::Drinker::VERSION
  spec.authors       = ["Kurtis Rainbolt-Greene"]
  spec.email         = ["me@kurtisrainboltgreene.name"]
  spec.summary       = %q{A client for the whiskey framework}
  spec.description   = spec.summary
  spec.homepage      = "http://krainboltgreene.github.io/whiskey-drinker"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "multi_json", "~> 1.7"
  spec.add_runtime_dependency "colored", "~> 1.2"
  spec.add_runtime_dependency "astruct", "~> 2.11"
  spec.add_runtime_dependency "celluloid-io", "~> 0.12"
  spec.add_runtime_dependency "thor", "~> 0.18"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "kramdown"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
end
