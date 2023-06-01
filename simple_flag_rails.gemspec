# frozen_string_literal: true

require_relative "lib/simple_flag/version"

Gem::Specification.new do |spec|
  spec.name = "simple_flag_rails"
  spec.version = SimpleFlag::VERSION
  spec.authors = ["Yoshiki Takagi"]
  spec.email = ["yoshiki.tkg@gmail.com"]

  spec.summary = "A simple feature flag for Rails."
  spec.description = "A simple feature flag for Rails."
  spec.homepage = "https://github.com/ytkg/simple_flag_rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ytkg/simple_flag_rails"
  spec.metadata["changelog_uri"] = "https://github.com/ytkg/simple_flag_rails/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
