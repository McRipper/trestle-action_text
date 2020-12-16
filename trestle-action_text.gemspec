# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trestle/action_text/version"

Gem::Specification.new do |spec|
  spec.name          = "trestle-action_text"
  spec.version       = Trestle::ActionText::VERSION

  spec.authors       = ["Emanuele Barban"]
  spec.email         = ["eb@blhack.it"]

  spec.summary       = "ActionText integration for the Trestle admin framework"
  spec.description   = "ActionText integration for the Trestle admin framework."
  spec.homepage      = "https://www.trestle.io"
  spec.license       = "LGPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "trestle", "~> 0.8", ">= 0.8.6"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
