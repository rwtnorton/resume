lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resume/version'

Gem::Specification.new do |gem|
  gem.name          = "resume"
  gem.version       = Resume::VERSION
  gem.authors       = ["Richard W. Norton"]
  gem.email         = ["rwtnorton@gmail.com"]
  gem.description   = %q{PORO library to describe domain of resume objects}
  gem.summary       = %q{PORO library to describe domain of resume objects.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'minitest'
  gem.add_runtime_dependency 'turn'
end
