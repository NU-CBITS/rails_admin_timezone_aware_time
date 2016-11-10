$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_timezone_aware_time/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_timezone_aware_time"
  s.version     = RailsAdminTimezoneAwareTime::VERSION
  s.authors     = ["Eric Carty-Fickes"]
  s.email       = ["ericcf@northwestern.edu"]
  s.homepage    = "https://github.com/NU-CBITS/rails_admin_timezone_aware_time"
  s.summary     = "Handle time inputs with timezone awareness."
  s.description = "Handle time inputs with timezone awareness."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
end
