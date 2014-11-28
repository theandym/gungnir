# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gungnir/version'

Gem::Specification.new do |spec|
  spec.name          = "gungnir"
  spec.version       = Gungnir::VERSION
  spec.authors       = ["Andy Macdonald"]
  spec.email         = ["andy@theandym.com"]
  spec.summary       = "Request generator for load testing"
  spec.description   = "Gungnir is a simple request generator intended to simulate load when testing web applications."
  spec.homepage      = "https://github.com/theandym/gungnir"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
