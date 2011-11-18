# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'jkusar-cassandra_object'
  s.version = '2.8.3'
  s.description = 'Cassandra ActiveModel'
  s.summary = 'Cassandra ActiveModel'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = '>= 1.3.5'

  s.authors = ["Michael Koziarski", "gotime", "Jason M. Kusar"]
  s.email = 'jason@kusar.net'
  s.homepage = 'http://github.com/jkusar/cassandra_object'

  s.extra_rdoc_files = ["README.rdoc"]
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency('activemodel', "~> 3.1")
  s.add_runtime_dependency('cassandra', "~> 0.12.0")

  s.add_development_dependency('bundler', "~> 1.0.0")
end
