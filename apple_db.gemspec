lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "apple_db/version"

Gem::Specification.new do |spec|
  spec.name          = "apple_db"
  spec.version       = AppleDb::VERSION
  spec.authors       = ["Johan Halse"]
  spec.email         = ["johan.halse@varvet.com"]

  spec.summary       = %q{A database of Mac serial numbers, queryable from Ruby}
  spec.description   = %q{This gem contains a bunch of serial numbers sourced from various places online. Query it for a serial number and get some data back.}
  spec.homepage      = "https://github.com/johanhalse/apple_db"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/johanhalse/apple_db"
  spec.metadata["changelog_uri"] = "https://github.com/johanhalse/apple_db/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
