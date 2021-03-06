$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "has_array_of/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "has_array_of"
  s.version     = HasArrayOf::VERSION
  s.author      = "Vladimir Kochnev"
  s.email       = "hashtable@yandex.ru"
  s.homepage    = "https://github.com/marshall-lee/has_array_of"
  s.summary     = "Associations on top of PostgreSQL arrays"
  s.description = "Adds possibility of has_many and belongs_to_many associations using PostgreSQL arrays of ids."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  unless RUBY_PLATFORM =~ /java/
    s.add_dependency 'pg', '~> 0.20.0'
  else
    s.add_dependency 'activerecord-jdbcpostgresql-adapter'
  end

  s.add_runtime_dependency 'activerecord', '~> 5.0'
  s.add_runtime_dependency 'railties', '>= 5.0'

  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.8.0'
  s.add_development_dependency 'database_cleaner', '~> 1.7.0'
  s.add_development_dependency 'with_model', '~> 2.1.2'
end
