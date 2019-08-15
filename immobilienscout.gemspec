lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'immobilienscout/version'

Gem::Specification.new do |spec|
  spec.name          = 'immobilienscout'
  spec.version       = Immobilienscout::VERSION
  spec.authors       = ['Homeday']
  spec.email         = ['backend-team@homeday.de']

  spec.summary       = 'A ruby gem to handle Immobilienscout API'
  spec.description   = 'This gem provides HTTP client to connect your app with Immobilienscout API'
  spec.homepage      = 'https://github.com/homeday-de/immobilienscout'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/homeday-de/immobilienscout'
  spec.metadata['changelog_uri'] = 'https://github.com/homeday-de/immobilienscout/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'json'
  spec.add_dependency 'multipart-post'
  spec.add_dependency 'activesupport'
  spec.add_development_dependency 'webmock', '~> 3.6'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
