# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tidy_html5/version'

Gem::Specification.new do |spec|
  spec.name          = 'tidy-html5'
  spec.version       = TidyHtml5::VERSION
  spec.authors       = ['whonz']
  spec.email         = ['whonzmail@gmail.com']

  spec.summary       = 'tidy-html5'
  spec.description   = 'tidy-html5 gem wrapper'
  spec.homepage      = 'https://github.com/cremame/tidy'
  spec.license       = 'MIT'

  spec.files = Dir['ext/**/*','lib/**/*']
  spec.bindir        = 'bin'
  spec.extensions = ['ext/tidy-html5/build/cmake/extconf.rb']
  spec.executables   = ['tidy-html5']
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
