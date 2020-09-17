# encoding: UTF-8
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'tutum-api'
  s.version       = '0.0.3'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Josie Wright', 'Martyn Garcia', 'Mikkel Garcia']
  s.email         = ['jozwright@gmail.com']
  s.homepage      = 'https://github.com/jozw/tutum-api'
  s.summary       = 'A Ruby wrapper for the Tutum API'
  s.files         = Dir.glob('lib/*.rb')

  s.require_paths = ['lib']

  s.add_runtime_dependency 'rest-client', '>= 1.7.2', '< 2.2.0'
  s.add_runtime_dependency 'json', '~> 1.8.1'

  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.1'
  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'wrong', '~> 0.7.1'
end
