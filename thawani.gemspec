# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thawani/version'

Gem::Specification.new do |spec|
  spec.name          = "thawani"
  spec.version       = Thawani::VERSION
  spec.authors       = ["Ghina Ajour"]
  spec.email         = ["ghinaajour@gmail.com"]
  spec.summary       = %q{Ruby wrapper for Thawani}
  spec.description   = %q{Ruby wrapper for Thawani}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'httparty'
end
