# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foundation_apps_styles/version'

Gem::Specification.new do |spec|
  spec.name          = "foundation_apps_styles"
  spec.version       = FoundationAppsStyles::VERSION
  spec.authors       = ["Steve Talcott Smith and Eumir Gaspar"]
  spec.email         = ["steve+eumir@aelogica.com"]

  spec.summary       = %q{Foundation for Apps without the JS}
  spec.description   = %q{Foundation for Apps without the JS}
  spec.homepage      = "https://github.com/aelogica/foundation_apps_styles"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
