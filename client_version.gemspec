# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_version/version'

Gem::Specification.new do |spec|
  spec.name          = 'client_version'
  spec.version       = ClientVersion::VERSION
  spec.authors       = ['Johannes Gorset']
  spec.email         = ['johannes@hyper.no']

  spec.summary       = 'Rack middleware for forcing clients to upgrade'
  spec.description   = 'Rack middleware for forcing clients to upgrade'
  spec.homepage      = 'https://github.com/hyperoslo/client-version'
  spec.license       = 'MIT'

  spec.files         = Dir[
    '{lib,test,bin,doc,config}/**/*', 'LICENSE.txt', 'README*'
  ]

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rack', '>= 1.5'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rack-test', '~> 0.6.3'
  spec.add_development_dependency 'rubocop', '~> 0.39'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
end
