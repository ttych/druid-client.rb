# frozen_string_literal: true

require_relative "lib/druid/client/version"

Gem::Specification.new do |spec|
  spec.name = "druid-client"
  spec.version = Druid::Client::VERSION
  spec.authors = ["Thomas Tych"]
  spec.email = ["thomas.tych@gmail.com"]

  spec.summary = "Druid (Apache) client utilities"
  spec.description = "Provides API interface to administrate/query Druid"
  spec.homepage = "https://gitlab.com/ttych/druid-client.rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitlab.com/ttych/druid-client.rb"
  spec.metadata["changelog_uri"] = "https://gitlab.com/ttych/druid-client.rb/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || \
        f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "faraday", "~> 2.2"
  spec.add_dependency "thor", "~> 1.2", ">= 1.2.1"

  spec.add_development_dependency "byebug", "~> 11.1", ">= 11.1.3"
  spec.add_development_dependency "flay", "~> 2.13"
  spec.add_development_dependency "flog", "~> 4.6", ">= 4.6.5"
  spec.add_development_dependency "rake", "~> 13.0", ">= 13.0.6"
  spec.add_development_dependency "reek", "~> 6.1", ">= 6.1.1"
  spec.add_development_dependency "rspec", "~> 3.11"
  spec.add_development_dependency "rubocop", "~> 1.28", ">= 1.28.2"
  spec.add_development_dependency "rubocop-rake", "~> 0.6.0"
  spec.add_development_dependency "rubocop-rspec", "~> 2.10"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
