# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-somemoji/version'

Gem::Specification.new do |s|
  s.name        = 'middleman-somemoji'
  s.version     = Middleman::Somemoji::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Yusuke Nakamura']
  s.email       = ['yusuke1994525@gmail.com']
  s.homepage    = 'https://github.com/unasuke/middleman-somemoji'
  s.summary     = %q{Convert emoji (e.g. :heart:) to <img> tag.}
  s.description = %q{Choose emoji provider and convert emoji shorthand to <img> tag using somemoji gem.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency 'middleman-core', '>= 4'
  s.add_runtime_dependency 'somemoji'
end
