lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'temporary_environment/version'

Gem::Specification.new do |spec|
  spec.name          = "temporary_environment"
  spec.version       = TemporaryEnvironment::VERSION
  spec.authors       = ["Alex Tamoykin"]
  spec.email         = ["alex@rightbalance.io"]

  spec.summary       = %q{Set a temporary environment variable for a duration of a block}
  spec.homepage      = "https://github.com/rightbalance/temporary_environment"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-rg"
end
