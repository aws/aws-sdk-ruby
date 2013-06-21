lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'aws/core/version'

Gem::Specification.new do |spec|
  spec.name          = "aws-core"
  spec.version       = Aws::Core::VERSION
  spec.authors       = ["Amazon Web Services", "Trevor Rowe"]
  spec.email         = ["trevorrowe@gmail.com"]
  spec.summary       = "AWS Core"
  spec.description   = "Provides client libraries for AWS."
  spec.homepage      = "http://github.com/aws/aws-core-rb"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("seahorse-client")
  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("minitest")
  spec.add_development_dependency("simplecov")
end
