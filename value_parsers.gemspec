# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'value_parsers/version'

Gem::Specification.new do |spec|
  spec.name          = 'value_parsers'
  spec.version       = ValueParsers::VERSION
  spec.authors       = ['Zac Stewart']
  spec.email         = ['zac@bignerdranch.com']
  spec.description   = %q{A gem for parsing CAS values into Ruby primitives for use in WebAdMIT projects}
  spec.summary       = %q{A gem for parsing CAS values into Ruby primitives for use in WebAdMIT projects}
  spec.homepage      = 'https://github.com/Liaison-Intl/value_parsers'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'simplecov'
end
