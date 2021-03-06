# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mruby/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "mruby-cli"
  spec.version       = MRuby::CLI::VERSION
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]

  spec.summary       = %q{MRuby command line helper utility.}
  spec.description   = %q{MRuby command line helper utility.}
  spec.homepage      = "https://github.com/sagmor/mruby-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "bundler", ">= 1.10"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
