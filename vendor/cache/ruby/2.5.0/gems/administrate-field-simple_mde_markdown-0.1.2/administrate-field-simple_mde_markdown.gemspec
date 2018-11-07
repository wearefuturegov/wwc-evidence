# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'administrate-field-simple_mde_markdown'
  spec.version       = '0.1.2'
  spec.authors       = ['Stuart Harrison']
  spec.email         = ['dev@wearefuturegov.com']

  spec.summary       = 'A plugin for markdown fields in Administrate using SimpleMDE'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/wearefuturegov/administrate-field-simple_mde_markdown'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'administrate', '> 0.8', '< 1'
  spec.add_dependency 'kramdown', '~> 1.17.0'
  spec.add_dependency 'rails', '>= 4.2', '< 6.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
