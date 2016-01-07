# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elasticsearch/rails/ha/version'

Gem::Specification.new do |s|
  s.name          = 'elasticsearch-rails-ha'
  s.version       = Elasticsearch::Rails::HA::VERSION
  s.authors       = ['Peter Karman']
  s.email         = ['peter.karman@gsa.gov']
  s.summary       = 'High Availability extensions to the Elasticsearch::Rails gem'
  s.description   = (
    'High Availability extensions to the Elasticsearch::Rails gem'
  )
  s.homepage      = 'https://github.com/18F/elasticsearch-rails-ha-gem'
  s.license       = 'CC0'

  s.files         = `git ls-files -z *.md bin lib`.split("\x0") + [
  ]
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.add_runtime_dependency 'elasticsearch-rails'

  s.required_ruby_version = ">= 1.9.3"
  s.add_development_dependency 'about_yml'
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"

  s.add_development_dependency "elasticsearch-extensions"
  s.add_development_dependency "elasticsearch-model"

  s.add_development_dependency "oj"
  s.add_development_dependency "rails",  ">= 3.1"

  s.add_development_dependency "lograge"

  s.add_development_dependency "minitest", "~> 4.2"
  s.add_development_dependency "test-unit" if defined?(RUBY_VERSION) && RUBY_VERSION > '2.2'
  s.add_development_dependency "shoulda-context"
  s.add_development_dependency "mocha"
  s.add_development_dependency "turn"
  s.add_development_dependency "yard"
  s.add_development_dependency "ruby-prof"
  s.add_development_dependency "pry"
  s.add_development_dependency "ci_reporter", "~> 1.9"

  if defined?(RUBY_VERSION) && RUBY_VERSION > '1.9'
    s.add_development_dependency "simplecov"
    s.add_development_dependency "cane"
    s.add_development_dependency "require-prof"
  end
end
