# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flesch_kincaid/version'

Gem::Specification.new do |spec|
  spec.name          = "flesch_kincaid"
  spec.version       = FleschKincaid::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["gavin@katanacode.com"]

  spec.summary       = %q{Lightweight gem for running Flesch Kincaid tests against text}
  spec.description   = %q{Flesch Kincaid allows you to parse blocks of text and assess their readability based on the Flesch Kincaid metric.}
  spec.homepage      = "https://github.com/katanacode/flesch_kincaid"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
