# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-onvedeo/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-onvedeo'
  spec.version       = OmniAuth::Onvedeo::VERSION
  spec.authors       = ['Evan Lok']
  spec.email         = ['elok45@gmail.com']

  spec.summary       = 'Onvedeo OAuth2 Strategy for OmniAuth'
  spec.description   = 'Onvedeo OAuth2 Strategy for OmniAuth'
  spec.homepage      = 'https://github.com/onvedeo/omniauth-onvedeo'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.3'
end
