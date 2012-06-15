# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'thrift'
  s.version     = '0.9.0.1'
  s.authors     = ['Thrift Developers']
  s.email       = ['dev@thrift.apache.org']
  s.homepage    = 'http://thrift.apache.org'
  s.summary     = %q{Ruby bindings for Apache Thrift}
  s.description = %q{Ruby bindings for the Apache Thrift RPC system}
  s.license = 'Apache 2.0'
  s.extensions = ['ext/extconf.rb']

  s.has_rdoc      = true
  s.rdoc_options  = %w[--line-numbers --inline-source --title Thrift --main README]

  s.rubyforge_project = 'thrift'

  dir = File.expand_path(File.dirname(__FILE__))

  s.files = Dir.glob("{lib,spec}/**/*")
  s.test_files = Dir.glob("{test,spec,benchmark}/**/*")
  s.executables =  Dir.glob("{bin}/**/*")

  s.extra_rdoc_files  = %w[CHANGELOG README] + Dir.glob("{ext,lib}/**/*.{c,h,rb}")

  s.require_paths = %w[lib ext]

  s.add_development_dependency "rake", "~> 0.9.2.2"
  s.add_development_dependency "rspec", "1.3.2"
  s.add_development_dependency "rack", "~> 1.4.1"
  s.add_development_dependency "rack-test", "~> 0.6.1"
  s.add_development_dependency "thin", "~> 1.3.1"
  s.add_development_dependency "bundler", "~> 1.1.4"
end

