lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compliance_line/version'

Gem::Specification.new do |spec|
  spec.name        = "compliance_line"
  spec.version     = ComplianceLine::VERSION
  spec.summary     = "Ruby interface to the Compliance Line API."
  
  spec.authors     = ["Junil Jacob"]
  spec.email       = ["juniljacob124@gmail.com"]
  spec.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.homepage    = "https://github.com/Healthicity/compliance_line"
  spec.license     = "MIT"
  spec.required_ruby_version = '~> 2.6'
  
  spec.add_runtime_dependency 'activesupport', '~> 6.0', '< 6.1'
  spec.add_development_dependency 'webmock', '~> 3'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'test-unit'
end