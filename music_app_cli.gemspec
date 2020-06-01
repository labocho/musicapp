require_relative "lib/music_app_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "music_app_cli"
  spec.version       = MusicAppCli::VERSION
  spec.authors       = ["labocho"]
  spec.email         = ["labocho@penguinlab.jp"]

  spec.summary       = "CLI for Apple's Music.app"
  spec.description   = "CLI for Apple's Music.app"
  spec.homepage      = "https://github.com/labocho/music_app_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/labocho/music_app_cli"
  spec.metadata["changelog_uri"] = "https://github.com/labocho/music_app_cli/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r(^exe/)) {|f| File.basename(f) }
  spec.require_paths = ["lib"]
end
