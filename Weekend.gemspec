# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Weekend/version'

Gem::Specification.new do |spec|
  spec.name          = "Weekend"
  spec.version       = Weekend::VERSION
  spec.authors       = ["Tushar Maroo"]
  spec.email         = ["tusharmaroo@gmail.com"]

  spec.summary       = %q{Gem for basic but helpful week days related queries.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/tusharmaroo/weekend"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
end
