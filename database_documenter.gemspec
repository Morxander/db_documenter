lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "database_documenter/version"

Gem::Specification.new do |spec|
  spec.name          = "database_documenter"
  spec.version       = DatabaseDocumenter::VERSION
  spec.authors       = ["Ahmed Yehia"]
  spec.email         = ["ruby@espace.com.eg"]
  spec.homepage      = "https://github.com/espace/db_documenter"

  spec.summary       = 'Generate Database Documentation as a word document'
  spec.description   = 'Generate Database Documentation as a word document'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "overcommit", "=0.49.0"
  spec.add_development_dependency 'pry', '~> 0.12.2'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "=0.58.2"

  spec.add_dependency 'caracal', '=1.4.1'
end
