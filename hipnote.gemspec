# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hipnote/version'

Gem::Specification.new do |spec|
  spec.name          = "hipnote"
  spec.version       = Hipnote::VERSION
  spec.authors       = ["Jesse La Russo"]
  spec.email         = ["jlarusso@canvas.is"]
  spec.summary       = %q{Post a notification in hipchat}
  spec.description   = %q{Post a notification in hipchat}
  spec.homepage      = "https://github.com/jlarusso-canvas/hipnote"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hipchat", "~> 1.2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
