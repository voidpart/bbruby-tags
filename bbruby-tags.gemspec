# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bbruby/tags/version'

Gem::Specification.new do |spec|
  spec.name          = "bbruby-tags"
  spec.version       = BBRuby::Tags::VERSION
  spec.authors       = ["Dmitry Kontsevoy"]
  spec.email         = ["dmitry.kontsevoj@gmail.com"]
  spec.summary       = %q{Additional tags to bb-ruby}
  spec.homepage      = "http://github.com/hh3x/bbruby-tags"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "bb-ruby"
end
