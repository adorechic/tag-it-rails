# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tag/it/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tag-it-rails"
  spec.version       = TagIt::Rails::VERSION
  spec.authors       = ["adorechic"]
  spec.email         = ["adorechic@gmail.com"]

  spec.summary       = %q{Gemified jQuery Tag-it! for Rails}
  spec.description   = %q{Gemified jQuery Tag-it! for Rails}
  spec.homepage      = "https://github.com/adorechic/tag-it-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"
  spec.add_dependency "jquery-ui-rails"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
