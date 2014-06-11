# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_erp_variants'
  s.version     = '0.1.0'
  s.summary     = 'Spree Extension : Enable to manage Variants information to associate ERP(Enterprise Resource Planning).'
  s.description = 'Admin can manage Maker Variant informations "Product Code(13 digits within)", "Stock" to associate as ERP Variant.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'digitalm'
  s.email     = 'digitalm.github@gmail.com'
  s.homepage  = 'https://github.com/digitalm/spree_erp_variants'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.4'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
