#encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "catarse_offline_payment/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "catarse_offline_payment"
  s.version     = CatarseOfflinePayment::VERSION
  s.authors     = ["Yonah Forst"]
  s.email       = ["joshblour@hotmail.com"]
  s.homepage    = "http://github.com/catarse/catarse_offline_payment"
  s.summary     = "Offline payments with Catarse"
  s.description = "Offline payments with Catarse crowdfunding platform"

  s.files      = `git ls-files`.split($\)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "slim-rails"

  s.add_development_dependency "rspec-rails", '~> 2.14.0'
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
end
