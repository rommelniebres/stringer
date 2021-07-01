# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stringify/version'
Gem::Specification.new do |spec|
  spec.name          = "stringer"
  spec.version       = Stringer::VERSION
  spec.authors       = ["rommelniebres"]
  spec.email         = ["rommelniebresj@gmail.com"]
  spec.homepage      = "https://github.com/rommelniebres/stringer"
  spec.summary       = "This is simple gem that will help us extend the functionality of strings"
  spec.description   = "Stringer will have a couple of useful methods that will help us extend the functionality of strings."
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/rommelniebres/stringer"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
