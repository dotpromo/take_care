# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'take_care/version'

Gem::Specification.new do |spec|
  spec.name          = "take_care"
  spec.version       = TakeCare::VERSION
  spec.authors       = ["Alexander Avoyants"]
  spec.email         = ["shhavel@gmail.com"]
  spec.description   = %q{Sidekiq wrapper for activerecord model}
  spec.summary       = %q{Sidekiq wrapper for activerecord model (any class which instances fetched by id)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sidekiq"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
