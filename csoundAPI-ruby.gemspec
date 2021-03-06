# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csoundAPI_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'csoundAPI-ruby'
  spec.version       = CsoundAPIRuby::VERSION
  spec.authors       = ['Nicola Bernardini']
  spec.email         = ['nicb@sme-ccppd.org']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/nicb/csoundAPI-ruby'
  spec.license       = 'GNU GPL 2 or higher'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'ffi', '~> 1.9'

  spec.extensions    = %w(bundle exec rake csound:compile)
end
