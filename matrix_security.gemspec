$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'matrix_security/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'matrix_security'
  s.version     = MatrixSecurity::VERSION
  s.authors     = ['Vitaly Shlyaga']
  s.email       = ['storkvist@storkvist.net']
  s.homepage    = 'http://matrix.mgup.ru'
  s.summary     = 'Библиотека, реализующая авторизацию и управление пользователями Матрицы.'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'devise'
  s.add_dependency 'foundation-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'rails', '~> 4.2.3'
  s.add_dependency 'sass-rails', '~> 5.0'

  s.add_development_dependency 'better_errors'
  s.add_development_dependency 'binding_of_caller'
  s.add_development_dependency 'quiet_assets'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'thin'
end
