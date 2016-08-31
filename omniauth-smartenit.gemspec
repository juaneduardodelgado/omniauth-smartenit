# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-smartenit/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-smartenit"
  spec.version       = Omniauth::Smartenit::VERSION
  spec.authors       = ["Juan Eduardo Delgado"]
  spec.email         = ["juaneduardodelgado@gmail.com"]
  spec.description   = %q{some description}
  spec.summary       = %q{some summary}
  spec.homepage      = "https://github.com/juaneduardodelgado/omniauth-smartenit"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2'
  spec.add_runtime_dependency 'multi_json'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
